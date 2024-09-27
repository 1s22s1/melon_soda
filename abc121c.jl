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
    n, m = parseints()
    drinks = [parseints() for _ ∈ 1:n]

    outcome = 0

    sort!(drinks)

    for (a, b) ∈ drinks
        # お店の商品を全部購入する
        if m ≥ b
            outcome += a*b
            m -= b
        else
            outcome += a*m

            break
        end
    end

    println(outcome)
end

solve()
