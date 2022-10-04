def commencer
    x = 10
    y = 0
    t = ""
    p = ""
    while x > 0
        x = x - 1
        y = y + 1
        t = " " * x
        p = "#" * y
        puts "#{t} #{p}"  
    end
end

def lancer
    return Random.rand(6)
end

def status(id)
    x = 10
    y = 0
    t = ""
    p = ""
    while x > 0
        x = x - 1
        y = y + 1
        t = " " * x
        p = "#" * y
        if x == id
            puts "#{t}M#{p}"  
        else
            puts "#{t} #{p}"  
        end
    end
end

def average_finish_time
    nb1 = 0
    nb2 = 0
    for x in 1..100
        nb1 = perform
        nb2 = nb2 + nb1
    end
    nb2 = nb2 / 100
    puts nb2
end

def perform
    nb = 0
    stair = 0
    commencer
    while stair != 10
        puts "Lance le dé ! (Appuie sur Entrée)"
        x = lancer
        x += 1
        if x == 6 || x == 5
            stair = stair + 1
            status(stair)
            nb += 1
        elsif x == 2 || x == 3 || x == 4
            status(stair)
            nb += 1
        else
            if stair == 0
                status(stair)
                nb += 1
            else
                stair = stair - 1
                status(stair)
                nb += 1
            end
        end
    end
    puts "Félicitation, tu as gagné !"
    return nb
end

average_finish_time