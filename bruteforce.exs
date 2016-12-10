defmodule BruteForce do
  def run do
    lower_chars
  end

  defp lower_chars do
    a = 97
    z = 26
    to_string [span(a, z)]
  end

  defp span(head, 0) do
    []
  end
  defp span(head, target_loc) do
    IO.puts head
    IO.puts target_loc
    [ head | span(head + 1, target_loc - 1)]
  end

end