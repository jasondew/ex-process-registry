defmodule ProcessRegistry do
  @doc false
  defmacro __using__(_opts) do
    quote do
      import ProcessRegistry

      @after_compile ProcessRegistry
    end
  end

  @doc false
  def __after_compile__(%{module: module}, _) do
    existing = Application.get_env(:foo, ProcessRegistry, [])
    Application.put_env(:foo, ProcessRegistry, existing ++ [module])
  end

  def modules do
    Application.get_env(:foo, ProcessRegistry)
  end
end
