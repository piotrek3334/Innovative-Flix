trigger TvSerie on SOBJECT (before insert) {
    when BEFORE_INSERT {
        ShowroomCloseFuture.updateToStatusClosed(Trigger.New);
    }
}