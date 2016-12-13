defmodule BruteForce do
  def run do
    chars = lower_chars
    read(chars, String.length(chars))
#    upper_chars
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

  defp read(str, 0) do
    IO.puts str
  end

  defp read(str, length) do
    IO.puts String.first str
    chars = String.slice(str, 1, String.length(str) - 1)
    read(chars, String.length(chars))
  end
end
