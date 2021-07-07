#Inserting "irb" in terminal will open Ruby console

#"def" define a method
def printing
    
    # "print" print data in console without linebrean by default
    print "HELLO WORLD! "
    # "puts" print data in console with linebreak
    puts "Hello World!"
    puts 2+2

#"end" finalize the function    
end

def dataTypes

    #Integer
    int = 1
    #"class" will return the object type
    puts int.class
    #Float
    float = 1.1
    puts float.class
    #Boolean
    bool = true
    puts bool.class
    #String
    string = "Potato"
    puts string.class
    #Symbol
    symbol = :anything
    puts symbol.class
    #Array
    array = [1, 2, 3]
    puts array.class
    #Hash
    hash = {tax: "theft"}
    puts hash.class
    puts "Tax is #{hash[:tax]}"
    #Function return value
    return 0

end

def input

    print "Insert something: "
    #"gets.chomp" will wait for keyboard input
    something = gets.chomp
    puts "Hello #{something}!"

end

def conditionalStructures

    #If
    if "a" == "a"
        puts "Tax is theft"
    end

    #Unless
    unless "a" == "b"
        puts "Tax is theft"
    end

    #Elsif
    num1 = 2
    num2 = 2
    if num1 == num2
        puts "#{num1} equals #{num2}"
    elsif num1 < num2
        puts "#{num1} smaller than #{num2}"
    else
        puts "#{num1} bigger than #{num2}"
    end

    #Case
    print "Please insert a integer number between -100 and 100: "
    number = gets.chomp.to_i
    puts number
    case number
        when -100..-1
            puts "The number is negative!" 
        when 0
            puts "The number is zero!"
        when 1..100
            puts "The number is positive"
        else
            puts "The number isn't between -100 and 100"
    end

end

def iterationStructures

    #For
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    for i in numbers
        puts i
    end

    print "\n\n"
    
    #While
    x = 1
    while x <= 10
        puts x
        x += 1
    end

    print "\n\n"

    #Loop
    count = 2
    loop do
        puts "----------| #{(count+2**256)/(2*count)} |----------"
        break if count == 2**18
        count += 1
    end

    #Times
    10.times do
        puts "Tax is theft"
    end

    puts "\n"

    #Each_Arrays
    number = 1
    numbers.each do |number|
        puts number
    end
    puts "\n", number

    puts "\n"

    #Each_Hashes
    things = {kernel: "bsd", cpu: "Ryzen 5", memory: "8 Gigabytes"}
    things.each do |key, value|
        puts "#{key} #{value}"    
    end

    puts "\n"
    
    #Map
    new_numbers = numbers.map do |i|
        #New Array will receive old array values multiplied by 2
        i * 2
    end
    puts "Numbers: "
    puts "#{numbers}"
    puts "\nNew Numbers: "
    puts "#{new_numbers}"

    #map! will force the change of original content
    numbers.map! do |i|
        i * 2
    end
    puts "\nNumbers Changed: "
    puts "#{numbers}"

    puts "\n"

    #Select_Array
    selection = numbers.select do |i|
        i > 10
    end
    puts "New Selection: "
    puts "#{selection}"

    #Select_Hash
    hselection = things.select do |key, value|
        key == :cpu
    end
    puts "\nNew Hash Selection: "
    puts "#{hselection}"

end

def collectionsSyntax
    #Arrays
    numbers = []
    cont = 0
    while cont < 1
        cont1 = (cont + 100) ** 2
        #"push" will add a new value in a new position of the array
        numbers.push(cont1, cont1*2)
        cont += 1
    end
    #"insert" can add a new value into a specific position of the array 
    #"0" is the initial position, in this example the value "100" will be inserted into position 0. 
    numbers.insert(0, 100, 200)
    #"delete_at" will delete some position in a array
    numbers.delete_at(2)
    for number in numbers
        puts number
    end
    #"count" will return the amount of positions in the array  
    puts "The array number has #{numbers.count} positions"

    print "\n\n"

    #Hashes
    things = {}
    things = {kernel: "bsd", cpu: "Ryzen 5", memory: "8 Gigabytes"}
    #Insert new key/value pair inside a hash
    things[:screen] = "Full HD 17 inches"
    #"keys" will list all keys in a hash
    puts things.keys, "\n"
    #"values" will list all values in a hash
    puts things.values, "\n"
    #"delete" will delete some value in a hash
    things.delete(:screen)
    puts things.values

end

def methods
    def something (number = 1)
        puts "The number is #{number}"
    end
    something
    number = 2
    # Replacing the default value of the parameter number in something
    something (number)

    def any_other_thing (a, b)
        #"return" break the method and return something
        return "potato"
        # The last line will be returned by default
        a > b
    end
    a = 3
    b = 2
    result = any_other_thing(a, b)
    puts "\nA > B? #{result}"

end

def gems
    # To install a gem, run in the terminal:
    # "gem install gem_name"
    # In this example, let's install the gem "os"
    # Please run "gem install os" in your terminal

    # If you want to uninstall some gem, use the command "gem uninstall gem_name"
    
    # To list gems installed, run "gem list"

    # Instancing the gem "os" with "require"
    require 'os'
    def my_os
        if OS.windows?
            "windows"
        elsif OS.linux?
            "Linux"
        elsif OS.mac?
            "MAC OSX"
        else
            "Oops! We can't identify your OS!"
        end
    end

    puts "My computer has #{OS.cpu_count} cores, with architeture of #{OS.bits} bits " +
    "and the OS is #{my_os}"

    # If you're developing a project, will be better use a bundle to install the gems
    # Verify the directory "project.example for more details"
end

gems