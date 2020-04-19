public with sharing class DetailViewController {
    
    public List<Account> accountList{get;set;}
    public Integer Cases{get;set;}
    public DetailViewController(){
          accountList = [SELECT Id,Name,BillingStreet, BillingCity, BillingState, (SELECT Id,Name from Opportunities),
          (SELECT Id,Name,Department from Contacts) FROM Account  limit 1 ];
          if(accountList.size()>0){
            Cases = [SELECT Count() from Case Where AccountId = :accountList[0].Id];
          }
          else{
            cases=0;
          }
    }
    
}