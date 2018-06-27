users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
      {
        :name => "fluffy",
        :species => "cat"
      },
      {
        :name => "fido",
        :species => "dog"
      },
      {
        :name => "spike",
        :species => "dog"
      }
    ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
      {
        :name => "nemo",
        :species => "fish"
      },
      {
        :name => "kevin",
        :species => "fish"
      },
      {
        :name => "spike",
        :species => "dog"
      },
      {
        :name => "rupert",
        :species => "parrot"
      }
    ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

#-----------------------exec:

# Get Jonathan's Twitter handle (i.e. the string "jonnyt")
users["Jonathan"][:twitter]
# Get Erik's hometown
users["Erik"][:home_town]
# Get the array of Erik's lottery numbers
users["Erik"][:lottery_numbers]
# Get the type of Avril's pet Monty
users["Avril"][:pets][0][:species]
# Get the smallest of Erik's lottery numbers
users["Erik"][:lottery_numbers].min
# Return an array of Avril's lottery numbers that are even
#=======couldn't find a simpler solution:
def even_numbers(lottery_n)
  even_nums = []
  for num in lottery_n
    even_nums.push(num) if num%2 == 0
  end
  return even_nums
end
even_numbers(users["Avril"][:lottery_numbers])
# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7)
# Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
# Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets] = {
  dog: "Fluffy",
  species: "dog"
}
# Add another person to the users hash
users ["Yuri"] = {
  :twitter => "MajorTom",
  :lottery_numbers => [1, 2, 3, 4, 5, 6],
  :home_town => "Klushino",
  :pets => [
    {
      :name => "Laika",
      :species => "dog"
    }
  ]
}
