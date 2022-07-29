trigger TvSerie on Tv_Serie__c (before insert , after insert) {

   if(Trigger.isInsert){
       TvSerieHandler.createTvSerieNotyfi(Trigger.New);
   }
   if(Trigger.isAfter){

    String body = '';
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    String[] toAddresses = new String[] {'piotr.lobejko@accenture.com', 'marcin.skladanowski@accenture.com', 'prounaucrisudou-6411@yopmail.com'};
    mail.setToAddresses(toAddresses);
    mail.setReplyTo('piotr.lobejko@accenture.com');
    mail.setSubject('Trieger');
    mail.setPlainTextBody('blaka' + body);
    Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    System.debug('email sent');
   }

}