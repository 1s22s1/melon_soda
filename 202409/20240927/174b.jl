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
    n, d = parseints()

    outcome = 0

    for _ ∈ 1:n
        x, y = parseints()

        if x^2 + y^2 ≤ d^2
            outcome += 1
        end
    end

    println(outcome)
end

solve()
