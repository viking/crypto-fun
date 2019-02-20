#chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + [' ']
chars = ('a'..'z').to_a + [' ']
puts "Valid character set: [#{chars.join}]"

plaintext = nil
while plaintext.nil?
  puts "Enter your plaintext:"
  plaintext = gets.chomp
  bad = plaintext.split("") - chars
  if !bad.empty?
    puts "Plaintext has illegal characters: #{bad.join}"
    plaintext = nil
  end
end

ciphertext = nil
while ciphertext.nil?
  puts "Enter your desired ciphertext:"
  ciphertext = gets.chomp
  bad = ciphertext.split("") - chars
  if !bad.empty?
    puts "Ciphertext has illegal characters: #{bad.join}"
    ciphertext = nil
  end
end

if plaintext.length > ciphertext.length
  ciphertext = ciphertext.ljust(plaintext.length)
elsif ciphertext.length > plaintext.length
  plaintext = plaintext.ljust(ciphertext.length)
end

key_pool = chars.shuffle
key = []
rows = []
plaintext.each_char.with_index do |plainchar, i|
  cipherchar = ciphertext[i]
  code = plainchar + cipherchar

  # look for row that satisfies this condition already
  row = rows.find { |r| r[:code] == code }
  if row.nil?
    # create new row
    raise "Key pool is empty!" if key_pool.empty?
    row = {
      code:  code,
      key:   key_pool.shift,
      chars: chars.reject { |char| char == cipherchar }.shuffle
    }
    row[:chars].insert(chars.index(plainchar), cipherchar)
    rows << row
  end
  key.push(row[:key])
end

# fill out the remaining grid with random stuff
key_pool.each do |keychar|
  rows.push({ key: keychar, chars: chars.shuffle })
end

puts "  #{chars.join}"
puts " +#{"-" * chars.length}+"
chars.each do |char|
  row = rows.find { |r| r[:key] == char }
  puts "#{char}|#{row[:chars].join}|"
end
puts " +#{"-" * chars.length}+"
puts "Key: #{key.join}"
