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
    o = parsestring()
    e = parsestring()

    for i ∈ eachindex(e)
        print(o[i])
        print(e[i])
    end

    if length(o) ≠ length(e)
        print(o[end])
    end

    println("")
end

solve()
