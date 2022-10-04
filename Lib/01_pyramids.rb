def half_pyramid
    puts "Bienvenu dans ma super pyramide ! Combien d'étages veux-tu ?"
    x = gets.to_i
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

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    x = gets.to_i
    t = ""
    p = ""
    y = 0
    a = 0
    while x > 0
        a = y + y + 1
        y = y + 1
        x = x - 1
        t = " " * x
        p = "#" * a
        puts "#{t} #{p}"
    end
end

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    x = gets.to_i
    m = x
    t = ""
    p = ""
    y = 0
    a = 0
    while x > 0
        a = y + y + 1
        y = y + 1
        x = x - 1
        t = " " * x
        p = "#" * a
        puts "#{t} #{p}"
    end
    while x < m - 1
        x = x + 1
        t = " " * x
        a = a - 2
        p = "#" * a
        puts "#{t} #{p}"
    end
end

wtf_pyramid