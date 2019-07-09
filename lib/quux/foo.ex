defmodule Quux.Foo do
  use ProcessRegistry
  @behaviour Quux.SomeBehaviour

  def things_i_do, do: [:foz, :fiz]
end
