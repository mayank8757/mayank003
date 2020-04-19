trigger Trigger_On_Account on Account (after insert, after update) {

    

    List<Country00__c> ConList = Country00__c.getall().values();
    
   // Account a;
    
   //  Payment__c pay = [Select Id, Status__c, Approved_Date__c, Approved_Name__c from Payment__c where id=: a.Payment__c];

 For(Account a : Trigger.new)
     {
  // Payment__c pay = [Select Id, Status__c, Approved_Date__c, Approved_Name__c from Payment__c where id=: a.Payment__c];
        for(Country00__c element : ConList) {
       
            if(a.Country__c == element.Country_Code__c){
            
                if (a.Payment__c != null){
             Payment__c pay = [Select Id, Status__c, Approved_Date__c, Approved_Name__c from Payment__c where id=: a.Payment__c];
                if(pay.Status__c=='To Be Approved' && a.Approve_Details__c == true && a.payment__c != null){
               pay.Approved_Date__c = a.CreatedDate.date();
               pay.Approved_Name__c = a.Name;
               pay.Status__c='Approved';
               update pay;
               }
             }
            }
       }        
    }
}