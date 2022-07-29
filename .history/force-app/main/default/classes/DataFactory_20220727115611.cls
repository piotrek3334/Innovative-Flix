public with sharing class DataFactory {

    public static List<Tv_Serie__c> createNewTvSerieThisSameName(){
        List<Tv_Serie__c> listTvSeries = new List<Tv_Serie__c>();
        Tv_Serie__c tvSerie1 = new Tv_Serie__c(Name='TeSt');
        Tv_Serie__c tvSerie2 = new Tv_Serie__c(Name='  TesT   ');
        Tv_Serie__c tvSerie3 = new Tv_Serie__c(Name='   test');
        listTvSeries.add(tvSerie1);
        listTvSeries.add(tvSerie2);
        listTvSeries.add(tvSerie3);
        return listTvSeries;
    }

    public static List<Tv_Serie__c> createNewTvSerieWithCorectName(){
        List<Tv_Serie__c> listTvSeries = new List<Tv_Serie__c>();
        Tv_Serie__c tvSerie1 = new Tv_Serie__c(Name= 'TesT');
        Tv_Serie__c tvSerie2 = new Tv_Serie__c(Name= 'TesT1');
        Tv_Serie__c tvSerie3 = new Tv_Serie__c(Name= '2test');
        listTvSeries.add(tvSerie1);
        listTvSeries.add(tvSerie2);
        listTvSeries.add(tvSerie3);
        return listTvSeries;
    }
}
