trigger CaseTrigger on Case (before insert,after insert, before update,after update) {

    system.debug('we are in the triggers');

    if (trigger.isBefore) {
        system.debug('We are in the before trigger');
        if (trigger.isInsert) {
            system.debug('We are in the before-insert triggers');    
        }else if (trigger.isUpdate){
            system.debug('We are in the before-update triggers');
            for (case eachCase : trigger.new) {
                system.debug('Case# '+ eachCase.CaseNumber+' was created with id '+ eachcase.Id +' on '+ eachCase.CreatedDate);     
            }
        }    
    }

    if (trigger.isAfter) {
        system.debug('We are in the after trigger');
        for (case eachCase : trigger.new) {
            system.debug('Case# '+ eachCase.CaseNumber+' was created with id '+ eachcase.Id +' on '+ eachCase.CreatedDate);     
        }
        if (trigger.isInsert) {
            system.debug('We are in the after-insert triggers');  
        }else if (trigger.isUpdate){
            system.debug('We are in the after-update triggers');
        }    
    }


}