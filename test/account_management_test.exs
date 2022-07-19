defmodule AccountManagementTest do
  use ExUnit.Case
  doctest AccountManagement

  test "greets the world" do
    assert AccountManagement.hello() == :world
  end
end
