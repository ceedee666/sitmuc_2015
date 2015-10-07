defmodule Router do
  def route do
    receive do
      {[ first | tail ], msg} -> 
        #IO.puts "#{inspect self} received: #{msg}!"
        #IO.puts "routing to next #{inspect first}"
        send first, {tail, msg}
        route

      {[], msg } -> 
        IO.puts "#{inspect self} Huuray, Got the delivery: #{msg}!"
    end
  end
end

defmodule Messenger do
  def deliver(message) do
		[router|routers] = Enum.map(1..10, &(spawn(Router, :route, [])

    send(router { routers , message })
  end
end
