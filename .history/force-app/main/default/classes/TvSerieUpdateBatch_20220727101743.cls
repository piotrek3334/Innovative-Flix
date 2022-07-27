public with sharing class TvSerieUpdateBatch implements Database.Batchable<Tv_Serie__c>{
    public Database.QueryLocator start(Database.BatchableContext BC){
    
        String query = 'SELECT Name FROM Tv_Serie__c';
        return Database.getQueryLocator(query);
     }
  
    public void execute(Database.BatchableContext BC, List<Tv_Serie__c> scope) {

    }

    public void finish(Database.BatchableContext BC){
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.toAddresses = new String[] { 'piotr.lobejko@accenture.com' };
        message.subject = 'New Tv Series';
        message.plainTextBody = 'Hello, we have new Tv Series';


        Messaging.SingleEmailMessage[] messages = new List<Messaging.SingleEmailMessage> {message};
        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
        if (results[0].success) {
            System.debug('The email was sent successfully.');
        } else {
            System.debug('The email failed to send: ' + results[0].errors[0].message);
        }
      }
}
