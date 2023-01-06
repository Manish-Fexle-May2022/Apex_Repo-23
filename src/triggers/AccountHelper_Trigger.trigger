trigger AccountHelper_Trigger on Account( after update) {
    if(Trigger.isAfter) {
        if(Trigger.isUpdate) {
            AccountHelper.changeContactActiveStatusAccordingToRelatedAccount(Trigger.new);
        }
    }   
}