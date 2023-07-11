defmodule JsonataTest do
  use ExUnit.Case
  doctest Jsonata

  test "evaluate" do
    assert 5 ==
             Jsonata.evaluate("some", %{some: 5})
  end
end
