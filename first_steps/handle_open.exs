handle_open = fn 
  {:ok, file} -> "File line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

# call with a file that exists
IO.puts handle_open.(File.open("intro/hello.exs"))

# call with a file that doesn't
IO.puts handle_open.(File.open("nonexistant"))