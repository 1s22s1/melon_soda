# Rot13
## How to run test

```console
yuu@penguin:~/src/melon_soda$ julia -q
(@v1.10) pkg> activate Rot13
  Activating project at `~/src/melon_soda/Rot13`

(Rot13) pkg> test
     Testing Rot13
      Status `/tmp/jl_qkcm8W/Project.toml`
  [e0f96ae6] Rot13 v0.1.0 `~/src/melon_soda/Rot13`
  [8dfed614] Test
      Status `/tmp/jl_qkcm8W/Manifest.toml`
  [e0f96ae6] Rot13 v0.1.0 `~/src/melon_soda/Rot13`
  [2a0f44e3] Base64
  [b77e0a4c] InteractiveUtils
  [56ddb016] Logging
  [d6f4376e] Markdown
  [9a3f8284] Random
  [ea8e919c] SHA v0.7.0
  [9e88b42a] Serialization
  [8dfed614] Test
     Testing Running tests...
Test Summary: | Pass  Total  Time
rot13         |    1      1  0.1s
     Testing Rot13 tests passed
```
