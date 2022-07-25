public with sharing class TvSeriesController {

    @AuraEnabled(cacheable=true scope='global')
    public static Tv_Serie__c[] getTvSerie(String tvSerieId) {
        return [
            SELECT
            Id,
            Name,
            Rate__c,
            Category__c,
            Logo_url__c,
            Description__c,
            Directors__c
            FROM Tv_Serie__c
            WHERE Id =: tvSerieId
        ];
    }

    @AuraEnabled(cacheable=true scope='global')
    public static Tv_Serie__c[] getAllTvSeries() {
        return [
            SELECT
                Id,
                Name,
                Rate__c,
                Category__c,
                Description__c,
                Logo_url__c,
                Directors__c
            FROM Tv_Serie__c
        ];
    }

    @AuraEnabled(cacheable=true scope='global')
    public static Tv_Serie__c[] searchTvSerie(String searchTerm) {
        searchTerm = searchTerm.trim();
        if (searchTerm == '') {
            return getAllTvSeries();
        }
        // Prepare query paramters
        searchTerm = '%' + searchTerm + '%';
        // Execute search query
        return [
            SELECT
            Id,
            Name,
            Rate__c,
            Category__c,
            Directors__c
            FROM Tv_Serie__c
            WHERE Name LIKE :searchTerm
            WITH SECURITY_ENFORCED
            ORDER BY Name
            LIMIT 50
        ];
    }
}
