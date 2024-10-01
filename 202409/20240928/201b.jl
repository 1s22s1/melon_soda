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

    dict = Dict()

    for _ ∈ 1:n
        s, t = parsestrings()

        dict[s] = parse(Int, t)
    end

    sort_dict = sort(collect(dict), by = x -> x[2], rev = true)

    println(sort_dict[2][1])
end

solve()

# T56my0NX7rlIeX
