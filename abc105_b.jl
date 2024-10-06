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

    for i ∈ 0:25, j ∈ 0:15
        if 4i + 7j == n
            println("Yes")

            exit()
        end
    end

    println("No")
end

solve()
