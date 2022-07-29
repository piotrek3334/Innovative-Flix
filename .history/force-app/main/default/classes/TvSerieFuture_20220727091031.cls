public with sharing class TvSerieFuture {
    public static void createTvSerieNotyfi(List<Tv_Serie__c> tvSerieList) {
        String name;
        for (Tv_Serie__c input : tvSerieList) {
            name = input.Name;
            name = name.toUpperCase();
            name = name.trim();

        }
    }
}
