public with sharing class SeasonsController {
    @AuraEnabled(cacheable=true scope='global')
    public static Seasons__c[] searchSeasons(String tvSerieId) {
        return [
            SELECT
            Id,
            Number,
            Tv_Serie__c
            FROM Seasons__c
            WHERE Tv_Serie__c =: tvSerieId
        ];
    }
}
