class Calculator
    def print_welcome
        puts "Welcome to Calculator!"
    end

    def add(num1, num2)
        # Implicit return
        num1 + num2    
    end
end

calc = Calculator.new
calc.print_welcome
puts calc.add(7, 11) * 2