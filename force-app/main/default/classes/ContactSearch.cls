public class ContactSearch {
    public static List<Contact> searchForContacts(String str1, String str2)
    {
        List<Contact> con = [Select Name, MailingPostalCode from Contact where LastName = :str1 and MailingPostalCode = :str2  ];
        
        System.debug(con);
        
        return con;
    }

}