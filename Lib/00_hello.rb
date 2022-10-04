def say_hello(first_name)
    print "Hello, #{first_name}"
end

def ask_first_name
    name = gets
    return name
end

def perform
    name = ask_first_name
    say_hello(name)
end

say_hello("Franck")
perform