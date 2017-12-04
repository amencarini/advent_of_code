ExUnit.start()

Code.require_file("day2.exs", __DIR__)

defmodule Day2Test do
  use ExUnit.Case

  describe "Day2.checksum/1" do
    test "finds the sum of differences of largest and smallest number" do
      matrix = [
        [5, 1, 9, 5],
        [7, 5, 3],
        [2, 4, 6, 8]
      ]

      assert Day2.checksum(matrix) == 18
    end
  end

  describe "Day2.evenly_divided_checksum/1" do
    test "finds the sum of differences of largest and smallest number" do
      matrix = [
        [5, 9, 2, 8],
        [9, 4, 7, 3],
        [3, 8, 6, 5]
      ]

      assert Day2.evenly_divided_checksum(matrix) == 9
    end
  end
end
