trigger TvSerie on Tv_Serie__c (before insert) {
    
    TvSerieFuture.createTvSerieNotyfi(Trigger.New);
    
}