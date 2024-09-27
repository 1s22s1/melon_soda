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
    a, b, c, d = parseints()

    while true
        c -= b

        if c ≤ 0
            println("Yes")

            exit()
        end

        a -= d

        if a ≤ 0
            println("No")

            exit()
        end
    end
end

solve()
