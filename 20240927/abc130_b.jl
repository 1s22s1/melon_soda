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
    n, x = parseints()
    ln = parseints()

    cur = 0
    outcome = 1

    for l ∈ ln
        cur += l

        if cur ≤ x
            outcome += 1
        end
    end

    println(outcome)
end

solve()
