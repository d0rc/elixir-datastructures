defprotocol Data.Foldable do
  @spec foldl(t, any, ((any, any) -> any)) :: any
  def foldl(self, acc, fun)

  @spec foldr(t, any, ((any, any) -> any)) :: any
  def foldr(self, acc, fun)
end

defimpl Data.Foldable, for: List do
  defdelegate foldl(list, acc, fun), to: List
  defdelegate foldr(list, acc, fun), to: List
end