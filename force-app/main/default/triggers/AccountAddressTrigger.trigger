trigger AccountAddressTrigger on Account (before insert, before update) {
    
    System.debug('Test Trigger');

    for(Account a : Trigger.new){
        System.debug(a.Name + a.BillingPostalCode + ' ' + a.Match_Billing_Address__c);
        If (a.Match_Billing_Address__c == true && a.BillingPostalCode!=Null) {
            System.debug(a.Match_Billing_Address__c);
            a.ShippingPostalCode = a.BillingPostalCode;
        }   
    }

}