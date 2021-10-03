defmodule WordsCounter do
  # TODO:
  # 1) Take a sentence
  # 2) Split a sentence into words
  # 3) Convert to lowercase
  # 4) Remove the stop words
  # 5) Create dictionary that keeps a number of words

  def remove_stop_words(words) do
    stop_words = ["a", "an", "the"]
    words -- stop_words
  end

  def lowercase(words) do
    Enum.map(words, fn word -> String.downcase(word) end)
  end

  def count_words(sentence) do
    sentence
    |> String.split
    |> lowercase
    |> remove_stop_words
    |> length
  end
end

IO.puts(WordsCounter.count_words("A quick brown fox jump"))
