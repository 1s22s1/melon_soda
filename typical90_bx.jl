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
    an = parseints()

    ring = repeat(an, 2)

    for i ∈ 1:2n
        total = 0

        for j ∈ 1:2n
            total += ring[j]

            if total == sum(an) ÷ 10
                println("Yes")

                exit()
            end
        end
    end

    println("No")
end

solve()
