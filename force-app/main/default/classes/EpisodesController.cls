public with sharing class EpisodesController {
    
@AuraEnabled(cacheable=true scope='global')
    public static Episode__c[] searchEpisodes(String seasonId) {
        return [
            SELECT
            Id,
            Number__c,
            Description__c
            FROM Episode__c
            WHERE Season__c =: seasonId
            ORDER BY Number__c
        ];
    }
}