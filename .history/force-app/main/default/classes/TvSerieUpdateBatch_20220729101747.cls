public with sharing class TvSerieUpdateBatch implements Database.Batchable<SObject>{
    String body ='';
    List<Tv_Serie__c> tvSerieList = new List<Tv_Serie__c>();
    public Database.QueryLocator start(Database.BatchableContext BC){

        return Database.getQueryLocator('SELECT Name FROM Tv_Serie__c WHERE Premiere__c > LAST_WEEK');
     }
  
    public void execute(Database.BatchableContext BC, List<Tv_Serie__c> scope) {
        tvSerieList = (List<Tv_Serie__c>)JSON.serialize(scope, List<Tv_Serie__c>.class);
        
        for (Integer i = 1; i <= tvSerieList.size(); i++){
            body = body + String.valueOf(i) + '. ' + tvSerieList[i].Name + '\n';
        }
        System.debug('string: ' +body);
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
        mail.setPlainTextBody('Hello \n New Tv Series from last week: \n' + body);
        try{
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        } catch(exception e) {
        System.debug('The email failed to send: ' + e.getMessage());
        }
    }
}
