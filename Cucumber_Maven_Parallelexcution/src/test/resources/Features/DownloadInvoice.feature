Feature: feature to download invoice checkout functionality

  @Download
  Scenario Outline: Verify that download invoice visible successfully
    Given User Launch chromebrowser
    When User Open URL
    Then Homepage title should be "Automation Exercise"
    Then Add to cart product button and click on cart button
    Then Validate that cart page is displayed
    And Click Proceed To Checkout then click on login button
    Then user fill the details as given form "<sheetName>" and <RowNumber>
    Then Verify ACCOUNT CREATED and click Continue button
    Then Validate Logged in as username at top of the page and click on cart button
    And Click Proceed To Checkout button
    Then Verify Address Details and Review Your Order
    And Enter description in comment text area and click Place Order button
    Then Enter user enter the card details as per in the form "<sheetName>" and <RowNumber>
    And Click Pay and Confirm Order button
    Then Verify success message Your order has been placed successfully is displayed
    Then Click Download Invoice button and verify invoice is downloaded successfully.
    Then Click on continue button and Click Delete Account button
    Then Verify ACCOUNT DELETED and click Continue button
    
 Examples:
      
    |sheetName| RowNumber|
    |invoice  |   0      |
