public with sharing class TvSerieUpdateBatch implements Database.Batchable<SObject>{
    private String body ='';

    public Database.QueryLocator start(Database.BatchableContext BC){

        return Database.getQueryLocator('SELECT Name FROM Tv_Serie__c');
     }
     // WHERE Premiere__c > LAST_WEEK
  
    public void execute(Database.BatchableContext BC, List<Tv_Serie__c> scope) {
        Integer value = 1;
        for (Tv_Serie__c tvSerieRecord : scope){
            body = body + String.valueOf(value) + '. ' + tvSerieRecord.Name + '\n';
            value++;
        }
    }

    public void finish(Database.BatchableContext BC){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'prounaucrisudou-6411@yopmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('piotr.lobejko@accenture.com');
        mail.setSubject('Batch');
        mail.setPlainTextBody('Batch' + body);
        Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        
        if (results[0].success) {
            System.debug('The email was sent successfully.');
        } else {
            System.debug('The email failed to send: ' + results[0].errors[0].message);
        }
    }
}
