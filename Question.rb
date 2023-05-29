# Generates questions
class Question
  attr_reader :first_number, :second_number, :solution

  def initialize
    @first_number = rand(1..100)
    @second_number = rand(1..100)
    @solution = @first_number + @second_number
  end

end