defmodule SecondTest do
  use ExUnit.Case
  doctest Second

  test "greets the world" do
    assert Second.hello() == :world
  end
end
