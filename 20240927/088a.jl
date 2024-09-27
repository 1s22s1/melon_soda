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
    n = parseint()
    a = parseint()

    if n % 500 ≤ a
        println("Yes")
    else
        println("No")
    end
end

solve()
