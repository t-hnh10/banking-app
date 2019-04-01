balance = 0.00

puts "Welcome to the online banking service!. Please enter your name."
name = gets.chomp

puts "Hi #{name}! Please enter your password below:"
password = gets.chomp
if password == "0000"
    loop do
    puts "What would you like do do? (options: balance, withdraw, deposit, exit)"
        optionChose = gets.chomp
        if optionChose == "balance"
            puts "Your balance is $#{balance}"
        elsif optionChose == "deposit"
            puts "How much would you like to deposit?"
            depositAmount = gets.chomp.to_f
            balance = balance+depositAmount
            puts "Your current balance is $#{balance}."
        elsif optionChose == "withdraw"
            puts "How much would you like to withdraw?"
            withdrawalAmount = gets.chomp.to_f
            balance = balance-withdrawalAmount
            puts "Your current balance is $#{balance}."
        elsif optionChose == "exit"
            puts "Thanks for choosing our bank. We put customers first!"
            abort
        else
            puts "Invalid selection! Please try again."
        end
    end
else
    puts "Sorry, the password you have entered is incorrect. You have now been locked out."
    abort
end