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

    if a ≤ 5
        println(0)
    elseif 6 ≤ a ≤ 12
        println(b÷2)
    else
        println(b)
    end
end

solve()
