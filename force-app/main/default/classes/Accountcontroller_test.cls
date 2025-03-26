@isTest
public class Accountcontroller_test {
    @isTest
    static void testGetAllActiveAccounts() {
        // Create test data
        Account activeAccount = new Account(Name = 'Active Account', Active__c = 'Yes');
        Account inactiveAccount = new Account(Name = 'Inactive Account', Active__c = 'No');
        insert new List<Account>{activeAccount, inactiveAccount};

        // Call the method to test
        Test.startTest();
        List<Account> result = AccountController.getAllActiveAccounts();
        Test.stopTest();

        // Validate the results
        System.assertEquals(1, result.size(), 'Only one active account should be returned.');
        System.assertEquals('Active Account', result[0].Name);
    }
}
