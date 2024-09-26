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
    hn = parseints()

    outcome = 1
    current_height = hn[1]

    for i ∈ 2:length(hn)
        if current_height ≤ hn[i]
            outcome += 1
            current_height = hn[i]
        end
    end

    println(outcome)
end

solve()
