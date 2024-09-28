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
    mountains = Dict()

    for _ ∈ 1:n
        s, t = parsestrings()

        mountains[s] = parse(Int, t)
    end

    mountains = sort(collect(mountains), by=x->x[2], rev=true)

    println(mountains[2][1])
end

solve()
