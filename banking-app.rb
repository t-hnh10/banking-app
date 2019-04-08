# Variables
balance = 0.00
array = []

puts "Welcome to the online banking service!. Please enter your name."
name = gets.chomp

puts "Hi #{name}! Please enter your password below:"
password = gets.chomp
if password == "0000"
    loop do
    puts "What would you like to do? (options: balance, withdraw, deposit, history, exit)"
        optionChose = gets.chomp.downcase
        puts "\e[2J\e[f"
        if optionChose == "balance"
            puts "Your balance is $#{balance}"
            array << "Checked balance"
        elsif optionChose == "deposit"
            puts "How much would you like to deposit?"
            depositAmount = gets.chomp.to_f
            balance = balance+depositAmount
            puts "Your current balance is $#{balance}."
            array << "Deposit: $#{depositAmount}"
        elsif optionChose == "withdraw"
            puts "How much would you like to withdraw?"
            withdrawAmount = gets.chomp.to_f
            if withdrawAmount > balance
                puts "Error! You are attempting to withdraw an invalid amount."
            else withdrawAmount <= balance
                balance = balance-withdrawAmount
                puts "Your current balance is $#{balance}."
                array << "Withdraw: $#{withdrawAmount}"
            end
        elsif optionChose == "history"
            puts array
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