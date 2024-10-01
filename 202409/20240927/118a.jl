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
    a, b = parseints()

    if b % a == 0
        println(a + b)
    else
        println(b - a)
    end
end

solve()
