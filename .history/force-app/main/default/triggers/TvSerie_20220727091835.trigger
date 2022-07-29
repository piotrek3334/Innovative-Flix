trigger TvSerie on Tv_Serie__c (before insert) {
    
        ShowroomCloseFuture.updateToStatusClosed(Trigger.New);
    
}