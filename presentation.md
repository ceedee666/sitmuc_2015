# Agenda

1. Why functional programming?
1. Why elixir?
1. Basic types & Operators
1. Pattern matching
1. Functions
1. Recursion
1. Concurrency



# Why FP?

- Abstractions
- Immutability
- DSLs
- Concurrency


#Why elixir?

- Runs on the Erlang VM
  - Reuse Erlang libraries
  - Modern functional language

- Erlang VM
  - Scalable 
  - Fault-Tolerant 
  - Simplified concurrent programming 




#Basic Types & Operators


## Basic Types

``` Elixir
# There are numbers
3    # integer
3.0  # float

# Atoms, that are literals, a constant with name.
:hello # atom

# Strings
"hello" # string

# Lists that are implemented as linked lists.
[1,2,3] # list

# Tuples that are stored contiguously in memory.
{:ok,"hello",1} # tuple
```


## Operators

``` Elixir
# Arithmetic operators
1 + 1
2 * 5
10 / 3
div(10, 3)

# List operators
[1,2,3] ++ [4,5,6]
[1,2,3] -- [2]

# Boolean operators
true and true
false or is_atom(:hello)
```



#Pattern matching


## The match operator

`=` is called the *match operator*

``` Elixir
# not simply an assignment
x = 1

# one match succeeds the other fails 
1 = x
2 = x
```


##Pattern matching

``` Elixir
# a  complex matches
{a, b, c} = {:hello, "world", 42}

# this match fails
{a, b, c} = {:hello, "world"}

# matching for specific values
{:ok, result} = {:ok, 13}

# mathing with lists
[head | tail] = [1, 2, 3]
[h|_] = [3, 4, 5]

```



#Functions
 
* Functions are first-class citizens 
* Two types of functions
  * Anonymous functions
  * Named functions
* Can be assigned to variables
* Can be function parameters


##Anonymous & named functions

``` Elixir
# Anonymous functions
d = &(&1 + &1)
s = fn(x) -> x * x end

# Named function
# Note that function params are patterns
def fib(0) do 0 end
def fib(1) do 1 end
def fib(n) do fib(n-1) + fib(n-2) end
```



##Higher order functions



#Recursion
