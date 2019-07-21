defmodule Chop do

  defp split(actual, _, current_guess) when actual == current_guess do
    actual
  end 
  defp split(_, a..b, _) when a == b do
    a
  end
  defp split(actual, a.._, current_guess) when actual in a..current_guess do
    new_guess = div((current_guess-a),2)+a
    IO.puts "Is it #{new_guess}"
    split(actual, a..current_guess, new_guess)
  end
  defp split(actual, _..b, current_guess) when actual in current_guess..b do
    new_guess = div((b-current_guess),2)+current_guess
    IO.puts "Is it #{new_guess}"
    split(actual, current_guess..b, new_guess)
  end

  def guess(actual, a..b) do
    new_guess = div((b-a),2)+a
    split(actual, a..b, new_guess)
  end

end