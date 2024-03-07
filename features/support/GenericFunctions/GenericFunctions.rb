require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

class GenericFunctions
  include Capybara::DSL
  
  def self.countdown(seconds)
    seconds.times do |i|
      print "\r-> WARN: Aguardando #{seconds - i} Segundos"
      sleep(1)
    end
    puts ''
  end

  def FindElement(elemento)
    find(elemento)
  end
  
  def UploadArquivo(file_input, elemento)
    file_input = FindElement(elemento, visible: false)
    file_input.attach_file(file_input)
  end

end
