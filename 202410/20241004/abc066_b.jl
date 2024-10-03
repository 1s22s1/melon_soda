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

    for i ∈ length(s)-1:-1:1
        sub_string = s[begin:i]
        sub_string_length = length(sub_string)

        if sub_string_length % 2 == 0
            if sub_string[begin:sub_string_length÷2] ==
               sub_string[sub_string_length÷2+1:end]
                println(sub_string_length)

                exit()
            end
        end
    end
end

solve()
