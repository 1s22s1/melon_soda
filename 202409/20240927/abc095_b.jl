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
    mn = []

    for _ ∈ 1:n
        push!(mn, parseint())
    end

    outcome = n
    x -= sum(mn)

    outcome += x ÷ minimum(mn)

    println(outcome)
end

solve()
