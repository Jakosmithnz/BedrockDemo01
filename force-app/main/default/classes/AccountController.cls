public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
     // ***This is te ony one ***
      return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
    }
  }