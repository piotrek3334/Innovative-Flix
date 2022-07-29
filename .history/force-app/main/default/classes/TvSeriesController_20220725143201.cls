public with sharing class TvSeriesController {

    @AuraEnabled(cacheable=true scope='global')
    public static Tv_Serie__c[] getTvSerie(String tvSerieId) {
        return [
            SELECT
                Id,
                Name
            FROM Tv_Serie__c
            WHERE Id =: tvSerieId
        ];
    }

    @AuraEnabled(cacheable=true scope='global')
    public static Tv_Serie__c[] searchTvSerie(String searchTerm) {
        searchTerm = searchTerm.trim();
        if (searchTerm == '') {
            return getTvSerie();
        }
        // Prepare query paramters
        searchTerm = '%' + searchTerm + '%';
        // Execute search query
        return [
            SELECT
                Id,
                Name
            FROM Tv_Serie__c
            WHERE Name LIKE :searchTerm
            WITH SECURITY_ENFORCED
            ORDER BY Name
            LIMIT 50
        ];
    }
}
