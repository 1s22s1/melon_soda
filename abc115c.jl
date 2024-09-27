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
    n, k = parseints()
    hn = [parseint() for _ ∈ 1:n]

    outcome = typemax(Int32)

    sort!(hn)

    for i ∈ 1:n-k+1
        outcome = min(outcome, hn[i+k-1] - hn[i])
    end

    println(outcome)
end

solve()
