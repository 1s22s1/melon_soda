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
    s = parsestring()

    alphabets = repeat(collect('A':'Z'), 2)

    for c ∈ s
        index = findfirst(x -> x == c, alphabets)

        print(alphabets[index+n])
    end

    println("")
end

solve()
