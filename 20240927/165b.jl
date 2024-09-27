function parseint()
    return readline() |> x -> parse(Int, x)
end
function parsestring()
    return readline()
end

function parseints()
    return readline() |> split |> x -> parse.(Int, x)
end

function parsestrings()
    return readline() |> split
end

function solve()
    x = parseint()

    total = 100
    count = 1

    while true
        println(total)
        total += floor(Int, 0.01total)

        if total ≥ x
            println(count)

            exit()
        end

        count += 1
    end
end

solve()
# In: 974755271730884810 Out: 3758

# Actutal
# 946087863382531142
# 955548742016356454
# 965104229436520018

# Correct
# 955548742016356051
# 965104229436519611
# 974755271730884807

# Here!!1
# 38030123828366199

total += floor(Int, 0.01total)
total = total + div(total, 100)
