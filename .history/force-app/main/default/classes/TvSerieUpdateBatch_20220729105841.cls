public with sharing class TvSerieUpdateBatch implements Database.Batchable<SObject>{
    String body;

    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('SELECT Name FROM Tv_Serie__c WHERE Premiere__c > LAST_WEEK');
    }
  
    public void execute(Database.BatchableContext BC, List<Tv_Serie__c> scope) {

        for (Integer i = 0; i < scope.size(); i++){
            this.body = body + String.valueOf(i + 1) + '. ' + SYSTEM.JSON.serialize(scope[i].Name) + '\n';
        }
        System.debug('string: ' + body);
    }

    public void finish(Database.BatchableContext BC){
        sentEmail();
    }

    public void sentEmail(){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'prounaucrisudou-6411@yopmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('piotr.lobejko@accenture.com');
        mail.setSubject('New Tv Series from last week');
        mail.setPlainTextBody('Hello \n' + 'New Tv Series from last week: \n' + this.body);
        try{
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        } catch(exception e) {
        System.debug('The email failed to send: ' + e.getMessage());
        }
    }
}
