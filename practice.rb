name = "Beetlejuice"

3.times do
    puts name
end

i = 0
while i < 3
    puts name
    i += 1
end

i = 0
until i == 3
    puts name
    i += 1
end

i = 0
loop do
    puts name
    i += 1

    if i == 3
        break
    end
end
