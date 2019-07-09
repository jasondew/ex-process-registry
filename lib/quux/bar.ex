defmodule Quux.Bar do
  use ProcessRegistry
  @behaviour Quux.SomeBehaviour

  def things_i_do, do: [:bar, :ban]
end
