defmodule User do
  defstruct name: "John", age: 29
end

defmodule Test do
  require User

  def main do
    john = %User{}
    IO.inspect(john)
    IO.puts("Another one")
    jane = %User{name: "Jane"}
    IO.inspect(jane)
    jane = %{jane | age: 31} # a syntax to copy jane struct to the new one and then update the age for jane
    IO.inspect(jane)

    IO.puts("Jane's age is: #{jane.age}")
    IO.puts("occupation")
    # jane = %{jane | occ: "Lawyer"}      # we cannnot add the occupation because we haven't defined it
    # IO.puts("Jane's age is: #{jane.occ}")
  end
end

Test.main()
