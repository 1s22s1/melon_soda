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

    # MLE NG
    # s′ = collect(s) |> sort |> join
    # t′ = collect(t) |> x -> sort(x, rev=true) |> join

    # MLE NG PART2
    # s′ = join(sort(collect(s)))
    # t′ = join(sort(collect(t), rev=true))

    s′ = join(sort(split(s, "")))
    t′ = join(sort(split(t, ""), rev=true))

    if s′ < t′
        println("Yes")
    else
        println("No")
    end
end

solve()
