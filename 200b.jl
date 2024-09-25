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
    n, k = parseints()

    for _ ∈ 1:k
        if n % 200 == 0
            n ÷= 200
        else
            n = 1000n + 200
        end
    end

    println(n)
end

solve()
