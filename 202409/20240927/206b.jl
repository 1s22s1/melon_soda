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

    count = 1
    total = 0

    while true
        total += count

        if total ≥ n
            println(count)

            exit()
        end

        count += 1
    end
end

solve()
