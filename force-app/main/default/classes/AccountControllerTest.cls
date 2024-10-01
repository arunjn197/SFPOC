@isTest
private class AccountControllerTest {
    @TestSetup
    static void makeData(){
        Account objAccount = new Account();
        objAccount.Name = 'Test';
        insert objAccount;
    }
    @isTest
    private static void getAccountList(){
        Test.startTest();
            List<Account> accList = AccountController.getAccountList();
        Test.stopTest();


        Assert.areEqual(accList.size(), 1, 'There must be one Account returned.');
    }

    
    @isTest
    private static void getSingleAccountTest(){
        Test.startTest();
            Account acc = AccountController.getSingleAccount();
        Test.stopTest();

        Assert.isNotNull(acc, 'There must be one Account returned.');
    }
}
