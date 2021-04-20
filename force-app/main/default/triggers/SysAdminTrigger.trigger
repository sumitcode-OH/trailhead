trigger SysAdminTrigger on User (before insert, before update) {
    for(User usr: Trigger.New)
    {
        if(usr.IsActive == true)
        {
           System.debug('Triggered ' + usr.IsActive);
           usr.FirstName = usr.LastName;
            

            
        }
    }
}