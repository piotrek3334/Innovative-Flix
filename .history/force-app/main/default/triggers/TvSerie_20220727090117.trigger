trigger TvSerie on SOBJECT (after insert) {
    when AFTER_INSERT {
        ShowroomCloseFuture.updateToStatusClosed(Trigger.New);
    }
}