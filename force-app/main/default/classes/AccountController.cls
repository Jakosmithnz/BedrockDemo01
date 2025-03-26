public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
     // This my Test One
     //This im my Test Two
     //This my Test Three
      return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
    }
  }