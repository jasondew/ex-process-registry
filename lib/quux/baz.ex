defmodule Quux.Baz do
  use ProcessRegistry
  @behaviour Quux.SomeBehaviour

  def things_i_do, do: [:baz, :buz]
end
