@isTest

public class TestRestrictContactByName {
@isTest
    static void testCheckDelete()
    {
        Contact con = new Contact(
         FirstName = 'Test',  LastName = 'INVALIDNAME'
        );
        
        insert con;
        
        Test.startTest();
        Database.DeleteResult result = Database.delete(con, false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
         System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.',result.getErrors()[0].getMessage());
    }
}