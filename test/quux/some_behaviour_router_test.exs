defmodule Quux.SomeBehaviourRouterTest do
  use ExUnit.Case
  alias Quux.SomeBehaviourRouter, as: Router

  test "every case" do
    assert {:error, :unknown} = Router.behaviour_for(:qux)
    assert {:ok, Quux.Bar} = Router.behaviour_for(:bar)
    assert {:ok, Quux.Bar} = Router.behaviour_for(:ban)
    assert {:ok, Quux.Baz} = Router.behaviour_for(:baz)
    assert {:ok, Quux.Baz} = Router.behaviour_for(:buz)
    assert {:ok, Quux.Foo} = Router.behaviour_for(:foz)
    assert {:ok, Quux.Foo} = Router.behaviour_for(:fiz)
  end
end
