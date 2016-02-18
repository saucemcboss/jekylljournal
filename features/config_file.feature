Feature: Read the app configuration from a file
  In order to make individual installations flexable,
  I want to be able to configure all the instance
  variables using a central dotfile.

  Scenario: No dotfile
    Given a file named "~/.jekylljournal.yaml" does not exist
    When I run `jekylljournal`
    Then the output should contain:
    """
    Config file not found, please create one.
    """
