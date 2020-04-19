//Books For Everyione
public with sharing class Books4EveryoneHomeController {
    @AuraEnabled
    public static List<Book__c> getBooksAndAuthor(){
      return [SELECT Name, Description__c, Author__r.Name
        FROM Book__c];
    }  
}