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
    k = parseint()
    a, b = parsestrings()

    parse(Int, a, base = k)parse(Int, b, base = k) |> println
end

solve()
