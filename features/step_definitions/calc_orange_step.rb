Given('I have {int} oranges') do |value1|
@orange = value1

end
 
When('I eat {int} oranges') do |value2|
    @eat = value2
    @result = @orange - @eat
end
    
Then('I see how much oranges a have') do
      expect(@result).to equal 8
end