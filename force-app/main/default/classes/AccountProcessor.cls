public class AccountProcessor {
    @future
    public static void countContacts (List<ID> accountIDs ){

        List<AggregateResult> lstContact = [SELECT AccountId, COUNT(Id) idCount FROM Contact
                            WHERE AccountId IN:accountIDs
                            GROUP By AccountId];

        List<Account> lstAccount = new List<Account>();
        for(AggregateResult result:lstContact)
        {
            Account acct = new Account(Id= (String) result.get('AccountId'), 
                            Number_of_Contacts__c = (Integer) result.get('idCount'));

            lstAccount.add(acct);
        }
        update lstAccount;
        System.debug('Accounts: ' + lstAccount);

    }
}