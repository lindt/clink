Feature: Usage
  As a Developer
  I want to invoke containers from cli

  Background:
    Given a file named "clink.sh" with:
      """
      cd ../..
      source clink
      $@
      """

  Scenario: Bash Invocation
    When I run `bash clink.sh ubuntu lsb_release -a`
    Then it should pass with:
      """
      Ubuntu
      """

  @skip
  Scenario: Zsh Invocation
    When I run `zsh clink.sh ubuntu lsb_release -a`
    Then it should pass with:
      """
      Ubuntu
      """

  @skip
  Scenario: Tagged Image
    When I run `bash clink.sh ubuntu:14.04 lsb_release -a`
    Then it should pass with:
      """
      14.04
      """

  @skip
  Scenario: Alpine
    When I run `bash clink.sh alpine /bin/sh -c "echo alpine works"`
    Then it should pass with:
      """
      alpine works
      """
