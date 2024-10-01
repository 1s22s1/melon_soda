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
    rev_s = reverse(s)

    outcome = 0

    for i ∈ eachindex(s)
        if s[i] ≠ rev_s[i]
            outcome += 1
        end
    end

    println(outcome)
end

solve()
