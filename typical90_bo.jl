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
    n, k = parsestrings()

    k = parse(Int, k)

    for _ ∈ 1:k
        # 8 -> 10
        n = parse(Int, n, base = 8)

        # 10 -> 9
        n = string(n, base = 9)

        # Replace from 8 to 5
        n = replace(n, '8' => '5')
    end

    println(n)
end

solve()
