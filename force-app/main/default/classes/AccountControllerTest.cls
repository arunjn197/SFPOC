@isTest
private class AccountControllerTest{
  @testSetup
  private static makeData(){
    Account acc = new Account();
    acc.Name = 'Test Account';
    insert acc;
  }
  @isTest
  private static getAccountListTest(){
    Test.startTest();
      List<Account> accList = AccountController.getAccountList();
    Test.stopTest();
    Assert.areEquals(accList.size(), 1, 'There must be account.');
  }


  @isTest
  private static getSingleAccountTest(){
    Test.startTest();
      Account accList = AccountController.getSingleAccount();
    Test.stopTest();
    Assert.areEquals(accList.size(), 1, 'There must be account.');
  }
}
