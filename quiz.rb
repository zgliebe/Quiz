class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are bananas?\n(a)pink\n(b)blue\n(c)yellow"
p3 = "What colore are oranges?\n(a)orange\n(b)yellow\n(c)grey"

questions =[
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "a")
]

def run_test(questions)
answer = ""
score= 0
for question in questions
  puts question.prompt
  answer = gets.chomp()
  if answer == question.answer
    score += 1
  end
end
puts ("you got" + score.to_s + "/" + questions.length().to_s)
end

run_test(questions)
