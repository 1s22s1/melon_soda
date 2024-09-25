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

    outcome = 0

    for i ∈ a:b
        if string(i) == string(i) |> reverse
            outcome += 1
        end
    end

    println(outcome)
end

solve()
