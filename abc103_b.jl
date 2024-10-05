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

    for i ∈ 1:length(s)-1
        tmp_ary = collect(s)
        s = tmp_ary[end] * join(tmp_ary[begin:end-1])

        if s == t
            println("Yes")

            exit()
        end
    end

    println("No")
end

solve()
