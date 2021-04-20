trigger HelloWorldTrigger on Account (before insert) {
    for(Account a: Trigger.New)
    {
                a.description = 'Test Triggers loop';
        System.debug('test');

    }
}