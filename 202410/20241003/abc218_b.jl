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
    pn = parseints()

    alphabet = collect('a':'z')

    for p ∈ pn
        print(alphabet[p])
    end

    println()
end

solve()
