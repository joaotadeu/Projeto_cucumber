Feature: mult

@mult
Scenario Outline: make a multi
Given I multi my <orange> to <value>
Then I See the <result>

Examples:
    | orange | value  | result   |
    | 20      | 1     |  19      |
    | 10      | 5     |  5       |
    | 10      | 10    |  0       |