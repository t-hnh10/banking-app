puts "Welcome to the banking app. Please enter your name."
name = gets.chomp

puts "Hi #{name}! Please enter your password below:"
password = gets.chomp
if password == "0000"
    puts "What would you like do do? (options: balance, deposit)"
        optionChose = gets.chomp
        if optionChose == "balance"
            puts "Your balance is $0"
        elsif optionChose == "deposit"
            puts "How much would you like to deposit?"
            depositAmount = gets.chomp
        else
            puts "Invalid selection!"
        end
else
    puts "Sorry, the password you have entered is incorrect. You have now been locked out."
    abort
end