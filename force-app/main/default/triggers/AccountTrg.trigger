trigger AccountTrg on Account (after update) {
         AccountHelperClass.ProcessAccounts(Trigger.oldMap,Trigger.NewMap);

}