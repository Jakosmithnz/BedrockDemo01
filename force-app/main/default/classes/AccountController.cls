public with sharing class AccountController {
  //This is a Test Warm up
  public static List<Account> getAllActiveAccounts() {
           return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
    }
  }