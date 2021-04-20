public class DemoQueueClass implements Queueable {
    public void execute(QueueableContext qc){
           List<Account> accnt = new List<Account>();
        
        
        for(Integer i=0; i<3;i++){
                   Account acc = new Account();
 
           acc.Name = 'New'+ i;
            accnt.add(acc);
            
        }
        Insert accnt;
      
      
        System.debug(accnt);
    }
    

  
}