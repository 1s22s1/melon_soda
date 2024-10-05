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

    ab = string(a)^b
    ba = string(b)^a

    if ab < ba
        println(ab)
    else
        println(ba)
    end
end

solve()
