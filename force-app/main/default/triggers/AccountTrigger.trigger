trigger AccountTrigger on Account (before insert) {

    for(Account acc : Trigger.new) {
        if(String.isBlank(acc.Description)) {
            acc.Description = 'Created by Apex Trigger';
        }
    }

}