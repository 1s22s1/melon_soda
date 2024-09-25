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
    a, b, k = parseints()

    for i ∈ a:b
        if i < a + k || i > b - k
            println(i)
        end
    end
end

solve()
