@isTest
public class LeadProcessorTest {
   @isTest 
    public static void loadData()
 {
     Lead ld = new Lead(LastName = 'Test_Name', Company = 'Test');
     Insert ld;
     
     
      Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        
      //  System.assertEquals(1, [SELECT  count(LeadSource) FROM Lead where LeadSource = 'Dreamforce']);
         
 }
}