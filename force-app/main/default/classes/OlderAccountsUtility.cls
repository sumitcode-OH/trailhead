public class OlderAccountsUtility {
	 public static void updateOlderAccounts() {
      // Get the 5 oldest accounts
      Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];
      // loop through them and update the Description field
      //          System.debug(oldAccounts );

      for (Account acct : oldAccounts) {
          acct.Description = 'Heritage Account';
          //System.debug(acct);
      }
      // save the change you made
     update oldAccounts;
    }
}