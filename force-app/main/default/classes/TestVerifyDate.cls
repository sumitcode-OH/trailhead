@isTest
private class TestVerifyDate {
    @isTest
    Static void testCheckDates_DateWithin30Days()
    {
        Date result = VerifyDate.CheckDates(system.today(),system.today().addDays(5));
        System.assertEquals(system.today().addDays(5), result);
    }
    @isTest
    Static void testCheckDates_SetEndOfMonthDate()
    {
        Date result = VerifyDate.CheckDates(system.today(),system.today().addDays(35));
        System.assertEquals(system.today().addDays(5), result);
    }
    

}