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

    for i ∈ 2:length(s)
        if s[begin:i-2] * s[i] * s[i-1] * s[i+1:end] == t
            println("Yes")

            exit()
        end
    end

    println("No")
end

solve()
