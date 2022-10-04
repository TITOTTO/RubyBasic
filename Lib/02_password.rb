def signup
    id = gets.chomp
end

def login(id)
    y = 0
    for x in 1..3 do
        var1 = gets.chomp
        break if var1 == id
        puts "Ce n'est pas le bon mot de passe"
        y = y + 1
    end
    if y == 3
        return 1
    else
        return 2
    end  
end

def welcome_screen
    puts "Bienvenu dans le DarkWeb !"
end

def perform
    id = signup
    x = login(id)
    if x == 1
        puts "T'as cru que je laissais rentrer n'importe qui ?"
    else
        welcome_screen
    end
end

perform