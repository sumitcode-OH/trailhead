public class RandomContactFactory {
    public Static List<Contact> generateRandomContacts(Integer count, String L_Name )
    {
        List<Contact> cnt = New List<Contact>();
        
        for(Integer i=1;i<=count; i++)
        {
           // System.debug(i);
            Contact c = New Contact(FirstName = 'Test'+i, LastName = L_Name);
            cnt.add(c);
        }
        
        System.debug(cnt);
        return cnt ;
    }
    
}