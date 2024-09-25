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
    a, b = parseints()

    for i ∈ 1:2000
        if floor(Int, 0.08i) == a && floor(Int, 0.10i) == b
            println(i)

            exit()
        end
    end

    println(-1)
end

solve()
