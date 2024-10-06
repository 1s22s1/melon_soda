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

    for i ∈ 1:9, j ∈ 1:9
        if i*j == n
            println("Yes")

            exit()
        end
    end

    println("No")
end

solve()
