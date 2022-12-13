trigger LeadTrigger on Lead (before insert,after insert, before update,after update) {
    list <lead> leadList = trigger.new;
if (trigger.isBefore && trigger.isInsert){
for (lead eachLead: leadList){
    if (eachLead.LeadSource == 'Web'){
        system.debug ('Rating should be Cold');
    } else {
        system.debug ('Rating should be hot');
    }
}
}





}