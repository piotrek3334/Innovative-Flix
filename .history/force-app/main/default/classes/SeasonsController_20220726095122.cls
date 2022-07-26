public with sharing class SeasonsController {
    @AuraEnabled(cacheable=true scope='global')
    public static Season__c[] searchSeasons(String tvSerieId) {
        return [
            SELECT
            Id,
            Number__c,
            Tv_Serie__c
            FROM Season__c
            WHERE Tv_Serie__c =: tvSerieId
            ORDER BY Number__c
        ];
    }
}
