trigger PayTrig2 on Payment__c (before insert) {
	 for(Payment__c p1 : Trigger.new){
          System.debug('Approved Name before in Loop1 ::'+ p1.Approved_Name__c);
         p1.Approved_Name__c='AP-INSERT';
         System.debug('Approved Name after in Loop1 ::'+ p1.Approved_Name__c);
     }
     for(Payment__c p2 : Trigger.new){
          System.debug('Approved Name before in Loop2 ::'+ p2.Approved_Name__c);
         p2.Approved_Name__c='AP-DELETE';
         System.debug('Approved Name after in Loop2 ::'+ p2.Approved_Name__c);
     }
}