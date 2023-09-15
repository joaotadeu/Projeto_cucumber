Given('I multi my {int} to {int}') do |orange, value|
    @multi = @q_orange * @c_value 
end
    
Then('I See the {int}') do |result|
    expect(@multi).to eq resul 
end