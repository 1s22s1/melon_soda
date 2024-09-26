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

    years = 0
    cur = 100

    while true
        years += 1

        cur += floor(Int, cur ÷ 100)

        if cur ≥ x
            println(years)

            exit()
        end
    end
end

solve()
