ExUnit.start()

Code.require_file("day1.exs", __DIR__)

defmodule Day1Test do
  use ExUnit.Case

  describe "Day1.captcha/1" do
    test "sums adjacent digits when they're the same" do
      assert Day1.captcha(1122) == 3
    end

    test "sums everything on same digit" do
      assert Day1.captcha(1111) == 4
    end

    test "returns 0 on no matches" do
      assert Day1.captcha(1234) == 0
    end

    test "calculates circularly" do
      assert Day1.captcha(91_212_129) == 9
    end
  end

  describe "Day1.halfway_captcha/1" do
    test "adds if n steps ahead the same value is found" do
      assert Day1.halfway_captcha(1212) == 6
    end

    test "does not add if nothing matches" do
      assert Day1.halfway_captcha(1221) == 0
    end

    test "example 3" do
      assert Day1.halfway_captcha(123_425) == 4
    end

    test "example 4" do
      assert Day1.halfway_captcha(123_123) == 12
    end

    test "example 5" do
      assert Day1.halfway_captcha(12_131_415) == 4
    end
  end
end
