//trigger for learning purpose
trigger PayTrig1 on Payment__c (before insert, before update) {

    for(Payment__c p : Trigger.new){
    	System.debug(p.Approved_Date__c);
        System.debug(p.Approved_Name__c);
    If (p.Status__c == 'To Be Approved')
    {
        p.Approved_Date__c=Date.TODAY();
        p.Approved_Name__c='AP-UPDATE';
        System.debug(p.Approved_Date__c);
        System.debug(p.Approved_Name__c);
    }
}
    for(Payment__c p1 : Trigger.new){
    	System.debug(p1.Approved_Date__c);
        System.debug(p1.Approved_Name__c);
    If (p1.Status__c == 'In Progress')
    {
        p1.Approved_Date__c=Date.TODAY();
        p1.Approved_Name__c='AP-No';
        System.debug(p1.Approved_Date__c);
        System.debug(p1.Approved_Name__c);
    }
}
}