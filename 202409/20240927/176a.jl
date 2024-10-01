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
    n, x, t = parseints()

    if n % x == 0
        println((n ÷ x)t)
    else
        println((n ÷ x + 1)t)
    end
end

solve()
