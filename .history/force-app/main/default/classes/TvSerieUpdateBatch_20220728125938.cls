public with sharing class TvSerieUpdateBatch implements Database.Batchable<SObject>{
    private List<String> tvSerieList;

    public Database.QueryLocator start(Database.BatchableContext BC){

        return Database.getQueryLocator('SELECT Name FROM Tv_Serie__c');
     }
     // WHERE Premiere__c > LAST_WEEK
  
    public void execute(Database.BatchableContext BC, List<Tv_Serie__c> scope) {
        for (Tv_Serie__c tvSerieRecord : scope){
            tvSerieList.add(tvSerieRecord.Name);
        }
    }

    public void finish(Database.BatchableContext BC){
        String body = '';
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'prounaucrisudou-6411@yopmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('piotr.lobejko@accenture.com');
        mail.setSubject('Batch');
        mail.setPlainTextBody('Batch' + body);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        System.debug('email sent');

    }
}
