function main()
    x = readline() |> x -> parse(Int, x)
    outcome = 0
    deposit = 100

    while true
        outcome += 1
        println(deposit)
        # deposit = floor(deposit * 1.01)
        deposit = deposit + div(deposit, 100)

        if deposit ≥ x
            break
        end
    end

    println(outcome)
end

main()
