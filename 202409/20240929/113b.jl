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

function temperature(t, x)
    return 1000t - 6x
end

function solve()
    n = parseint()
    t, a = parseints()
    hn = parseints()

    # 温度は1000倍して計算する

    outocome = 1
    outcome_temperature = temperature(t, hn[1])

    for i ∈ 2:n
        currente_temperature = temperature(t, hn[i])

        if abs(currente_temperature - 1000a) < abs(outcome_temperature - 1000a)
            outcome_temperature = currente_temperature
            outocome = i
        end
    end

    println(outocome)
end

solve()
