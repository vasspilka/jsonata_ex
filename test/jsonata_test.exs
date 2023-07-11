defmodule JsonataTest do
  use ExUnit.Case
  doctest Jsonata

  test "greets the world" do
    assert Jsonata.hello() == :world
  end
end
