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
    h, w = parseints()

    if h == 1 || w == 1
        println(h * w)

        exit()
    end

    println(ceil(Int, h / 2)ceil(Int, w / 2))
end

solve()
