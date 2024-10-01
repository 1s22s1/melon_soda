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

    pie = sum(an) ÷ 10
    an = repeat(an, 2)

    current_pie = 0
    for a ∈ an
        if current_pie == pie
            println("Yes")

            exit()
        end

        if current_pie < pie
            current_pie += a
        else
        end
    end

    println("No")
end

solve()
