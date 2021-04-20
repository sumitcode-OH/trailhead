public class Demo3 {
    
/*
    String websiteUrl = 'www.apexhours.com';
    
    public void mainValueMethod(){
        
       
        
        System.debug('Before value call ' + websiteUrl);
        passByValueCall(websiteUrl);
        System.debug('After value call ' + websiteUrl);
    }
    
    private void passByValueCall(String websiteUrlValue){		//Pass by Value Call
        System.debug('Printing from passByValueCall function: ' + this.websiteUrl);
        this.websiteUrl = 'www.salesforce.com';		
    }

*/
    
    public void mainReferenceMethod(){
        
        Account a = new Account();
        a.Name = 'Test Account';
        a.Website = 'www.apexhours.com';
        
        System.debug('Before reference call ' + a);
        passByRefCall(a);
        System.debug('After reference call ' + a);
    }     

    private void passByRefCall(Account a){						//Pass by Reference Call
        a.Website = 'www.salesforce.com';
    }
}