require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

class Navegador
  include Capybara::DSL

  def initialize(driver = :firefox)
    Capybara.default_driver = driver
    Capybara.register_driver driver do |app|
      Capybara::Selenium::Driver.new(app, browser: driver)
    end
  end

  def abrir_pagina(url)
    visit(url)
  end

  def fechar_navegador
    Capybara.current_session.driver.quit
  end
end