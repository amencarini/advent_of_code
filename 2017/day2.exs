defmodule Day2 do
  # difference checksum
  def checksum(matrix) do
    List.foldl(matrix, 0, &add_difference/2)
  end

  defp add_difference(row, acc) do
    calculate_difference(row) + acc
  end

  defp calculate_difference(row) do
    {min, max} = Enum.min_max(row)
    max - min
  end

  # evenly divided checksum
  def evenly_divided_checksum(matrix) do
    List.foldl(matrix, 0, &add_division/2)
  end

  defp add_division(row, acc) do
    {digit1, digit2} = find_evenly_dividable_digits(row)
    acc + div(digit2, digit1)
  end

  defp find_evenly_dividable_digits(row), do: do_find_evenly_dividable_digits(row, row)

  defp do_find_evenly_dividable_digits([], _), do: raise("could not find pair")

  defp do_find_evenly_dividable_digits([head_digit | rest], full_row) do
    result =
      Enum.find(full_row, fn digit ->
        head_digit != digit && rem(head_digit, digit) == 0
      end)

    if result do
      {result, head_digit}
    else
      do_find_evenly_dividable_digits(rest, full_row)
    end
  end
end

# matrix =
#   "day2_input.txt"
#   |> File.stream!()
#   |> Enum.map(fn line ->
#        line
#        |> String.trim()
#        |> String.split("\t")
#        |> Enum.map(fn elem -> String.to_integer(elem) end)
#      end)
