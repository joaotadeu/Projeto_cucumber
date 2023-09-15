When('I sum {int} + {int}') do |value1, value2|
    @Sum = value1 + value2 
end
  
Then('the result must be {int}') do |result|
  expect(@Sum).to equal result
end
