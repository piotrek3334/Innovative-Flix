public with sharing class TvSerieFuture {
    public static void createTvSerieNotyfi(List<Tv_Serie__c> tvSerieList) {
        String name;
        List<Tv_Serie__c> oldTvSeries = new List<Tv_Serie__c>();
    
        oldTvSeries = [SELECT Name FROM Tv_Serie__c];

        for (Tv_Serie__c input : tvSerieList) {
            name = input.Name;
            name = name.toUpperCase();
            name = name.trim();
            for(Tv_Serie__c existTvSerie : oldTvSeries)
                if (name == existTvSerie.Name) {
                    input.addError('This Tv Serie is in our data base');
                }
        }
    }
}
