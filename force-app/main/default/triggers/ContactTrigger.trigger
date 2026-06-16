trigger ContactTrigger on Contact (before insert) {
    for(Contact con: Trigger.new) {
        if(String.isBlank(con.Description)) {
            con.Description = 'Created by Apex Trigger';
        }
    }
}