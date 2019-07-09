defmodule Quux.SomeBehaviourRouter do
  # You need this sleep here so that the other
  # files can finish compiling first so the registry
  # can work.  Aside from that it does though
  #
  # Another downside is this is in no way linked to the
  # other modules. So if a new one is added you need to
  # ensure this is force compiled to pick up the changes
  Process.sleep(3000)

  for mod <- ProcessRegistry.modules(), thing <- mod.things_i_do() do
    def behaviour_for(unquote(thing)), do: {:ok, unquote(mod)}
  end

  def behaviour_for(_), do: {:error, :unknown}
end
