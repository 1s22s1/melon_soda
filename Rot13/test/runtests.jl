using Test

import Rot13: rot13

@testset "rot13" begin
    @test rot13("KAPPA") == "XNCCN"
    @test rot13("KUDAN") == "XHQNA"
    @test rot13("KOMAINU") == "XBZNVAH"
end
