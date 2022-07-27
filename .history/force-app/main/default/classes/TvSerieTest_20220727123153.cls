@isTest
public with sharing class TvSerieTest {
    @isTest static void checkNameWithRespondFalse() {
        List<Tv_Serie__c> listTvSeries =DataFactory.createNewTvSerieThisSameName();
        insert listTvSeries[0];
        Database.SaveResult[] result= Database.insert(listTvSeries, false); 
        for (Database.SaveResult sr : result) {
            if (sr.isSuccess()) {
                // Operation was successful, so get the ID of the record that was processed
                System.debug('Successfully inserted: ' + sr.getId());
            }
    }}

    @isTest static void checkNameWithRespondTrue() {
        List<Tv_Serie__c> listTvSeries =DataFactory.createNewTvSerieWithCorectName();
        Database.SaveResult[] result= Database.insert(listTvSeries, true); 
        for (Database.SaveResult sr : result) {
            if (sr.isSuccess()) {
                // Operation was successful, so get the ID of the record that was processed
                System.debug('Successfully inserted: ' + sr.getId());
            }
    }
}}
