def generate_password(length, use_lower, use_upper, use_digits, use_symbols)
  characters = []
  characters += ('a'..'z').to_a if use_lower
  characters += ('A'..'Z').to_a if use_upper
  characters += ('0'..'9').to_a if use_digits
  characters += ['!', '@', '#', '$', '%', '^', '&', '*'] if use_symbols
  
  password = Array.new(length) { characters.sample }.join
  password
end
puts "Copyright 2014-2023 @dev_aixel All Rights Reserved."
sleep(3)
loop do
  puts "ランダムパスワードを生成します。"
  
  print "生成するパスワードの個数を入力してください: "
  num_passwords = gets.chomp.to_i
  
  num_passwords.times do
    print "小文字を使用しますか？ (y/n): "
    use_lower = gets.chomp.downcase == 'y'
    
    print "大文字を使用しますか？ (y/n): "
    use_upper = gets.chomp.downcase == 'y'
    
    print "数字を使用しますか？ (y/n): "
    use_digits = gets.chomp.downcase == 'y'
    
    print "記号を使用しますか？ (y/n): "
    use_symbols = gets.chomp.downcase == 'y'
    
    print "パスワードの長さを入力してください: "
    password_length = gets.chomp.to_i
    
    generated_password = generate_password(password_length, use_lower, use_upper, use_digits, use_symbols)
    puts "生成されたパスワード: #{generated_password}"
    puts "------------------------"
  end
  
  puts "終了するにはEnterキーを押してください。続けるには何かキーを押してください。"
  break if gets == "\n"
end
