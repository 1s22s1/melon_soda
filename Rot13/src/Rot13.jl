module Rot13

const lookup_table = Dict(
    'A' => 'N',
    'B' => 'O',
    'C' => 'P',
    'D' => 'Q',
    'E' => 'R',
    'F' => 'S',
    'G' => 'T',
    'H' => 'U',
    'I' => 'V',
    'J' => 'W',
    'K' => 'X',
    'L' => 'Y',
    'M' => 'Z',
    'N' => 'A',
    'O' => 'B',
    'P' => 'C',
    'Q' => 'D',
    'R' => 'E',
    'S' => 'F',
    'T' => 'G',
    'U' => 'H',
    'V' => 'I',
    'W' => 'J',
    'X' => 'K',
    'Y' => 'L',
    'Z' => 'M',
)

function rot13(text)
    return map(x -> lookup_table[x], text) |> join
end

end # module Rot13
