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
    t, a = parseints()
    hn = parseints()

    outcome = 1
    outcome_templature = abs(a - t - hn[1] * 0.006)

    for i ∈ 2:n
        current_templature = abs(a - t - hn[i] * 0.006)

        @show i, hn[i], current_templature, outcome, outcome_templature

        if current_templature < outcome_templature
            outcome = i
            current_templature = outcome_templature
        end
    end

    println(outcome)
    # 581
end

solve()
