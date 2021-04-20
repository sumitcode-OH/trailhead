public with sharing class DeleteUser {
    public void DeleteUser() {

    }

    public void getUsers()
    {
        User[] user = [ SELECT  Id, CreatedDate, NAme, Email,LastLoginDate,Username , IsActive 
        FROM User where IsActive = True AND CreatedDate = LAST_N_DAYS:2
        ];

        for (User usr : user) {
            System.debug(usr.Name + ' ' + usr.UserName);
            
        }

        User[] emailUserList = [ Select Name, Email from User 
        where ProfileId in (SELECT Id FROM Profile where Name = 'System Administrator') ];

        for (User usr : emailUserList) {
            System.debug( 'Admin: ' + usr.Email );
            
        }

    }
}