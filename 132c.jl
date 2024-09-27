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
    dn = parseints()

    sort!(dn)

    println(dn[n÷2+1] - dn[n÷2])
end

solve()
