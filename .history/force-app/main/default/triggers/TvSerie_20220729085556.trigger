trigger TvSerie on Tv_Serie__c (before insert) {

   if(Trigger.isInsert){
       TvSerieHandler.createTvSerieNotyfi(Trigger.New);
   }
   
}