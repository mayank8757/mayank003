//Class 123454

public with sharing class AccountController {
  public static List<Account> getAllActiveAccounts() {
    System.debug('I am inside the code');
    System.debug('I am inside the code Line 2');
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
}