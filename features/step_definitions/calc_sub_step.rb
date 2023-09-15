Given('I have {string} oranges') do |quant_orange|
    puts quant_orange
    @orange = @quant_orange
end

When('I eat {int} orangles') do |eat_quant|
    @eat = eat_quant
    @result = @orange - @eat 
end
    
Then('I see how much orange I have') do
      expect(@result).to equal 8
end