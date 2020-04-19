@isTest
private class TestRestrictContactByName {
	@isTest static void TestRestrictContact() {
        List<Contact> listContact= new List<Contact>();
        Contact cont1 = new Contact(FirstName = 'Mayank',
                                  LastName = 'INVALIDNAME');
         Contact cont2 = new Contact(FirstName = 'Mayank',
                                  LastName = 'Kumar');
        listContact.add(cont1);
        listContact.add(cont2);
        
        Test.startTest();
            try
            {
                insert listContact;
            }
            catch(Exception ee)
            {
            }
        
        Test.stopTest(); 
    }
}