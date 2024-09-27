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

function templature(t, x)
    return 1000t - 6x
end

function solve()
    n = parseint()
    t, a = parseints()
    hn = parseints()

    outcome = 1
    outcome_templature = templature(t, hn[1])

    for i ∈ 2:n
        current_tempature = templature(t, hn[i])

        if abs(1000a - current_tempature) < abs(1000a - outcome_templature)
            outcome_templature = current_tempature
            outcome = i
        end
    end

    println(outcome)
end

solve()
