trigger TvSerie on Tv_Serie__c (before insert) {
    
    TvSerieHandler.createTvSerieNotyfi(Trigger.New);
    
}