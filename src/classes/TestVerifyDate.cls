@isTest
public class TestVerifyDate {
    @isTest static void testOldDate(){
        Date dt = VerifyDate.CheckDates(date.today(), date.today().addDays(-1));
        System.debug(date.today().addDays(-1));
        System.assertEquals(date.newInstance(2018, 11, 30), dt);
    }
    
    @isTest static void testLessThan30Days(){
        Date dt = VerifyDate.CheckDates(date.today(), date.today().addDays(20));
        System.debug(date.today().addDays(20));
        System.assertEquals(date.today().addDays(20), dt);
    }
    
    @isTest static void testMoreThan30Days(){
        Date dt = VerifyDate.CheckDates(date.today(), date.today().addDays(31));
        System.debug(date.today().addDays(31));
        System.assertEquals(date.newInstance(2018, 11, 30), dt);
    }
    

}