@simple_calculator
Feature: simple calculator

As a client
i want resolve problems math simple

@sum_calculator
Scenario Outline: calculator sum
When I sum 3 + 3
Then the result must be 6