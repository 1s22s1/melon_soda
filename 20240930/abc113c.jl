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

function getkey(prefecture, year)
    return "$(prefecture)-$(year)"
end

function solve()
    n, m = parseints()

    raw_cities = [parseints() for _ ∈ 1:m]
    cities = sort(raw_cities)

    dict = Dict()
    current_prefecture = -1
    city_number = 1

    for (prefecture, year) ∈ cities
        if current_prefecture ≠ prefecture
            city_number = 1
            current_prefecture = prefecture
        end

        dict[getkey(prefecture, year)] = "$(lpad(string(prefecture), 6, "0"))$(lpad(string(city_number), 6, "0"))"

        city_number += 1
    end

    for (prefecture, year) ∈ raw_cities
        println(dict[getkey(prefecture, year)])
    end
end

solve()
