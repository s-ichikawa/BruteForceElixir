defmodule BruteForce do
  def run do
    Enum.map(String.graphemes(lower_chars), &IO.puts(&1))
    Enum.map(String.graphemes(upper_chars), &IO.puts(&1))
  end

  defp lower_chars do
    a = 97
    z = 26
    to_string([span(a, z)])
  end
  
  defp upper_chars do
    a = 65
    z = 26
    to_string [span(a, z)]
  end

  defp span(head, 0) do
    []
  end
  defp span(head, target_loc) do
    [ head | span(head + 1, target_loc - 1)]
  end


end
