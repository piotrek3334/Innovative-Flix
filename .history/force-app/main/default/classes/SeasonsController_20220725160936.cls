public with sharing class SeasonsController {
    @AuraEnabled(cacheable=true scope='global')
    public static Season__c[] searchSeasons(String tvSerieId) {
        return [
            SELECT
            Id,
            Number,
            Tv_Serie__r
            FROM Season__c
            WHERE Tv_Serie__c =: tvSerieId
        ];
    }
}
