defmodule BruteForce do
  def run do
    Enum.map(lower_chars, &IO.puts(&1))
    Enum.map(upper_chars, &IO.puts(&1))
    Enum.map(lower_chars, &multi(lower_chars, &1))
    Enum.map(lower_chars, &multi(upper_chars, &1))
  end

  defp lower_chars do
    a = 97
    z = 26
    String.graphemes(to_string([span(a, z)]))
  end
  
  defp upper_chars do
    a = 65
    z = 26
    String.graphemes(to_string [span(a, z)])
  end

  defp span(head, 0) do
    []
  end
  defp span(head, target_loc) do
    [ head | span(head + 1, target_loc - 1)]
  end

  defp multi(chars, char) do
    Enum.map(chars, fn(saffix) ->
        IO.puts(char <> saffix)
    end)
  end

end
