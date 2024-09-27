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
    r, g, b = parseints()

    if ((100r + 10g + b) % 4 == 0)
        println("YES")
    else
        println("NO")
    end
end

solve()
