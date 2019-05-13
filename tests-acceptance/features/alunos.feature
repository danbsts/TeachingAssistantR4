Feature: As a professor
         I want to register students
         So that I can manage their learning goals

Scenario: Registering student with non registered CPF
Given I am at the students page
Given I cannot see a student with CPF "683" in the students list
When I try to register the student "Paulo" with CPF "683"
Then I can see "Paulo" with CPF "683" in the students list

Scenario: Deleting student with registered CPF
Given I am at the students page
Given I can see a student with CPF "683" in the students list
When I try to delete the student "Paulo" with CPF "683"
Then I can't see "Paulo" with CPF "683" in the students list

Scenario: Registering student with non registered CPF
Given I am at the students page
Given I cannot see a student with CPF "683" in the students list
When I try to register the student "Daniel" with CPF "683" and github "dan"
Then I can see "Daniel" with CPF "683" in the students list

Scenario: Registering student with non registered CPF
Given I am at the students page
Given I cannot see a student with CPF "684" in the students list
When I try to register the student "Ruy" with CPF "684" and github "ruy"
Then I can see "Ruy" with CPF "684" in the students list

Scenario: Deleting student with registered CPF
Given I am at the students page
Given I can see a student with CPF "683" in the students list
Given I can see a student with CPF "684" in the students list
When I try to delete the student "Daniel" with CPF "683"
When I try to delete the student "Ruy" with CPF "684"
Then I can't see "Daniel" with CPF "683" in the students list
Then I can't see "Ruy" with CPF "684" in the students list