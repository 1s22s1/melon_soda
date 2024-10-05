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
    s = parsestring()
    t = parsestring()

    if s == t
        println("Yes")

        exit()
    end

    for _ ∈ 1:length(s)-1
        s = s[end] * s[begin:end-1]

        if s == t
            println("Yes")

            exit()
        end
    end

    println("No")
end

solve()
