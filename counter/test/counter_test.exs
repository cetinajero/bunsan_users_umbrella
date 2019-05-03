defmodule CounterTest do
  use ExUnit.Case
  doctest Counter

  test "greets the world" do
    assert Counter.hello() == :worlds
  end
end
