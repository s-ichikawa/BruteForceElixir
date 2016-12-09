defmodule BruteForce do
  def run do
    lower_chars
  end

  defp lower_chars do
    a = 97
    z = a + 25
    to_string [span(a, z)]
  end

  defp span([], 0) do
    []
  end
  defp span(head, target_loc) do
    [ head | span(head + 1, target_loc - head)]
  end
end