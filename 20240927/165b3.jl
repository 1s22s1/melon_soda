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
    x = parseint()

    total = 100
    count = 1

    while true
        total = total + total ÷ 100

        if total ≥ x
            println(count)

            exit()
        end

        count += 1
    end
end

solve()
