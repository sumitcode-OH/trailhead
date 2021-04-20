Public Class AccountHelperClass
{

    Public static void ProcessAccounts(Map<Id,Account> OldMap,Map<Id,Account> NewMap)
    {
        for(Account acc: NewMap.values() ){
            System.debug(oldMap.get(acc.Id).Name + ' ' + NewMap.get(acc.Id).Name);
        }
    }


}