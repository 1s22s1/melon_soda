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

    outcome = 0

    for i ∈ 1:n
        if i % 3 ≠ 0 && i % 5 ≠ 0
            outcome += i
        end
    end

    println(outcome)
end

solve()
