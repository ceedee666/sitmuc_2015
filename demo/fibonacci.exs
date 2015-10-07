defmodule NaiveFib do 
  def fib(0) do 0 end
  def fib(1) do 1 end
  
  def fib(n) do 
    # This invocation is not tail call optimized
    fib(n-1) + fib(n-2) 
  end
end

defmodule Fib do
  def fib(n) when is_integer(n) and n > 1 do
    fibn(n)
  end
  
 defp fibn(n, current \\ 0, next \\ 1) do 
    fib(b, a+b, n-1) 
  end
end
