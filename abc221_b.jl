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

function swapstr(str, i, j)
    tmp = collect(str)
    tmp[i], tmp[j] = tmp[j], tmp[i]

    return join(tmp)
end

function solve()
    s = parsestring()
    t = parsestring()

    if s == t
        println("Yes")

        exit()
    end

    for i ∈ 1:length(s)-1
        if swapstr(s, i, i+1) == t
            println("Yes")

            exit()
        end
    end

    println("No")
end

solve()
