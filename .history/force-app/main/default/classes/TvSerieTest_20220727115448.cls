@isTest
public with sharing class TvSerieTest {
    @isTest static void checkNameWithRespondFalse() {
        List<Tv_Serie__c> listTvSeries =DataFactory.createNewTvSerieThisSameName();
        Database.SaveResult result= Database.insert(listTvSeries, false); 
        System.assert(result.isSuccess());
    }

    @isTest static void checkNameWithRespondTrue() {
        List<Tv_Serie__c> listTvSeries =DataFactory.createNewTvSerieThisSameName();
        Database.SaveResult result= Database.insert(listTvSeries, true); 
        System.assert(result.isSuccess());
    }
}
