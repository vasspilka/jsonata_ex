defmodule JsonataTest do
  use ExUnit.Case
  doctest Jsonata

  test "greets the world" do
    assert Jsonata.hello() == :world
  end

  test "evaluate" do
    assert 5 ==
             Jsonata.evaluate("some", %{some: 5})
  end
end
