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
    p = parseint()

    outcome = 0

    for i ∈ 10:-1:1
        coin = factorial(i)

        outcome += p ÷ coin
        p %= coin
    end

    println(outcome)
end

solve()
