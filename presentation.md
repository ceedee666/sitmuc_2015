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
`=`is called the *match operator*
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


##Pure functions


##Higher order functions



#Recursion
