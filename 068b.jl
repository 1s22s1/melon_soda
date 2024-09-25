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

    arr = [1, 2, 4, 8, 16, 32, 64]

    for i ∈ n:-1:1
        if i ∈ arr
            println(i)

            exit()
        end
    end
end

solve()
