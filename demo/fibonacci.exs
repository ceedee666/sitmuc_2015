defmodule NaiveFib do 
  def fib(0) do 0 end
  def fib(1) do 1 end
  
  def fib(n) do 
    # This invocation is not tail call optimized
    fib(n-1) + fib(n-2) 
  end
end

defmodule Fib do
  def fib(n) when is_integer(n) and n > 0 do
    fibn(n, 1, 0)
  end

  defp fibn(0, _, result) do
		result
  end
  
  defp fibn(n, next, result) do 
    fibn(n-1, next + result, next) 
  end
end
