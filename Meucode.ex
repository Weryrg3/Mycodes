defmodule Student do

  defstruct name: nil, results: []

  def first_name(student) do
    student.name
    |> String.split()
    |> List.first()
  end

  def last_name(student) do
    student.name
    |> String.split()
    |> List.last()
  end
end

defmodule Subject do
  defstruct name: nil, result: nil
end

defmodule Calculator do

  def rand(), do: Enum.random(10 .. 20) / 2
  def start() do
    
    joao = %Student{name: "João Joaquim", results: build_subjects([rand(), rand(), rand(), rand()])}
    maria = %Student{name: "Maria da Silva", results: build_subjects([rand(), rand(), rand(), rand()])}
    pedro = %Student{name: "Pedro Pedrada", results: build_subjects([rand(), rand(), rand(), rand()])}
    kaua = %Student{name: "Kauã Camboinhas", results: build_subjects([rand(), rand(), rand(), rand()])}

    result = calculate([joao, maria, kaua, pedro])
    best = best_result(result)
    {result, best}
  end

  defp calculate(students) do
    students
    |> Enum.map(
      &%{
        first_name: Student.first_name(&1),
        last_name: Student.last_name(&1),
        average: average(&1)
      }
    )
  end

  defp average(student) do
    total = Enum.count(student.results)

    result =
      student.results
      |> Enum.map(& &1.result)
      |> Enum.reduce(&(&1 + &2))

    Float.ceil(result / total, 1)
  end

  defp best_result(students) do
    best =
      students
      |> Enum.map(& &1.average)
      |> Enum.max()

    students
    |> Enum.filter(&(&1.average === best))
  end

  defp build_subjects(results) do
    subjects = ["Matemática", "Português", "Geografia", "História"]

    subjects
    |> Enum.map(&%Subject{name: &1, result: Enum.random(results)})
  end
end

#wesley = %Student{}      #Não pode acessar pelo próprio código, nem por outro código, compilar antes