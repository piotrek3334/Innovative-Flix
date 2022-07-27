trigger TvSerie on Tv_Serie__c (before insert,) {
    when BEFORE_INSERT {
        ShowroomCloseFuture.updateToStatusClosed(Trigger.New);
    }
}