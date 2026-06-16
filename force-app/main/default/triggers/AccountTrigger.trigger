trigger AccountTrigger on Account (before insert) {
    //This is for testing only.
    for(Account acc : Trigger.new) {
        if(String.isBlank(acc.Description)) {
            acc.Description = 'Created by Apex Trigger';
            System.debug('Change from test1')
        }
    }
}