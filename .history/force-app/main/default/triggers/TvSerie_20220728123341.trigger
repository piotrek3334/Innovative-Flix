trigger TvSerie on Tv_Serie__c (before insert , after insert) {
   // if(Trigger.isInsert){
   //     TvSerieHandler.createTvSerieNotyfi(Trigger.New);
   // }
   // if(Trigger.isAfter){

        String body = '';
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {'piotr.lobejko@accenture.com', 'piotrek3334@gmail.com', 'prounaucrisudou-6411@yopmail.com'};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('piotr.lobejko@accenture.com');
        mail.setSubject('bla');
        mail.setPlainTextBody('blaka' + body);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        System.debug('email sent');

        // Contact dummyContact = createDummyContact();

        // try
        //     {
        //         Database.DMLOptions dml = new Database.DMLOptions( );
        //         dml.duplicateRuleHeader.allowSave = true;
        //         dml.optAllOrNone = true;
        //         Database.SaveResult srContact = Database.insert( dummyContact, dml );
    
        //         if ( !srContact.isSuccess( ) ){
        //             System.debug('Error');
        //         }
    
        //         Messaging.sendEmail( new List<Messaging.SingleEmailMessage>{
        //                 createEmailMessage( dummyContact.Id )
        //         } );
    
        //     } catch ( Exception ex )         {
        //         String message = ex.getMessage( );
        //     } finally {
        //         delete [ SELECT Id FROM Contact WHERE Id= :dummyContact.Id];
        //     }
        // }
    
        //   private static Contact createDummyContact(  ) {
        //     Contact contact = new Contact( );
        //     contact.FirstName = 'cokolwiek';
        //     contact.LastName = 'cokolwiek';
        //     contact.Email = 'prounaucrisudou-6411@yopmail.com';
        //     return contact;
        // }
    
    
        //   private static Messaging.SingleEmailMessage createEmailMessage( String dummyContactId ){
        //     Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage( );
        //     message.setTargetObjectId( dummyContactId );
        //     message.setUseSignature( false );
        //     message.setBccSender( false );
        //     message.setSaveAsActivity( false );
        //     return message;
      //  }
}