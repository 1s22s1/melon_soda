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
    s = parsestring()

    if occursin(Regex("\\d{$a}-\\d{$b}"), s)
        println("Yes")
    else
        println("No")
    end
end

solve()
