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
    s = parsestring()

    if occursin(r"\d{3}", s)
        outcome = parse(Int, s)

        println(outcome * 2)
    else
        println("error")
    end
end

solve()
