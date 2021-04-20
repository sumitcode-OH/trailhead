public class LeadProcessor implements Database.Batchable <sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('SELECT Name, LeadSource FROM Lead');
    }
    
    public void execute(Database.BatchableContext bc, List<Lead> ld )
    {
        for(Lead l: ld )
        {
            l.LeadSource = 'Dreamforce';
        }
        
        update ld;
        
    }
    
    public void finish(Database.BatchableContext bc){
        
    }

}