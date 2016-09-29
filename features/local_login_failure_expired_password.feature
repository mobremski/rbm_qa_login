Feature: Login Failure due to Expired password

Scenario:
  Given I am on the login page
  And I am a user of role Store Manager with an expired password
  And I enter my valid username
  And I enter an expired password
  And I submit the form
  Then Login should not succeed
  And I should be taken to an update password page
  When I enter a new password
  And I submit the reset password form
  Then login should succeed