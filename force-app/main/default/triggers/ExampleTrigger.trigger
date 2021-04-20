trigger ExampleTrigger on Contact (after insert,after delete) {
    if (Trigger.isInsert){
        Integer recordCOunt = Trigger.new.size();
        System.debug(recordCOunt);
        
        
            
    }
}