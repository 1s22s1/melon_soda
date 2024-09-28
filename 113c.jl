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
    municipalities = sort!([parseints() for _ ∈ 1:m])

    dict = Dict()

    for (p, y) ∈ municipalities
        if haskey(dict, p)
            dict[p] = push!(dict[p], y)
        else
            dict[p] = [y]
        end
    end

    for (p, y) ∈ municipalities
        index = findfirst(x -> x == y, dict[p])

        println(lpad(p, 6, '0'), lpad(index, 6, '0'))
    end
end

solve()
