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

    outcome = 0

    for i ∈ 1:length(s)÷2
        if s[i] ≠ s[length(s)+1-i]
            outcome += 1
        end
    end

    println(outcome)
end

solve()
