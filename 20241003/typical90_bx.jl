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

    target = sum(an) ÷ 10
    ring = repeat(an, 2)

    for i ∈ 1:2n
        total = 0

        for j ∈ i:2n
            total += ring[j]

            if total == target
                println("Yes")

                exit()
            elseif total > target
                break
            end

        end
    end

    println("No")
end

solve()
