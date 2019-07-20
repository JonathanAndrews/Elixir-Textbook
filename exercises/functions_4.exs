prefix = fn string -> fn string_2 -> "#{string} #{string_2}" end end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")