Feature: Data Driven Demo in Karate DSL

  @SampleAPI
  Scenario Outline: Sample Api to be tested
    # for fetching the data from an external file we have to use Scenario Outline: instead of Scenario:
    Given url dummyBaseUrl
    And path 'api/v1/create'
    And request {"name":<name>,"salary":<salary>,"age":"<age>"}
    #parameters that you want to  pass in your request payload should be given in <*Here_comes_the_parameter*>
    When method POST
    Then status 200
    And print response
    And match $.data.name == '<name>'
    And def id = $.data.id

    Given path '/api/v1/update/' + id
    And request {"name":"test1","salary":"1123","age":"23"}
    When method PUT
    Then status 200
    Then print response

    Examples:
      |read('/home/knoldus/DataDriven-Karate/src/test/resources/inputData.csv')|
