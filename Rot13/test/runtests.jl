using Test

import Rot13: rot13

@testset "rot13" begin
    @test rot13("ABC") == "NOP"
end
