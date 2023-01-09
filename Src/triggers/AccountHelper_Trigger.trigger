trigger AccountHelper_Trigger on Account(before update ) {
    if(Trigger.isupdate && Trigger.isbefore){
        ModifyOpportunity.modifyAccountsOpportunityFields(Trigger.new , Trigger.oldMap);
    }
}