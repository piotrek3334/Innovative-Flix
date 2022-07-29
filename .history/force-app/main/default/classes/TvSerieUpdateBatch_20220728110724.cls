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
        dummyContact = createDummyContact();

try
        {
            Database.DMLOptions dml = new Database.DMLOptions( );
            dml.duplicateRuleHeader.allowSave = true;
            dml.optAllOrNone = true;
            Database.SaveResult srContact = Database.insert( dummyContact, dml );

            if ( !srContact.isSuccess( ) ){
                throw new Exception( );
            }

            Messaging.sendEmail( new List<Messaging.SingleEmailMessage>{
                    createEmailMessage( dummyContact.Id )
            } );

        } catch ( Exception ex )
        {
            String message = ex.getMessage( );

        } finally
        {
            delete [ SELECT Id FROM Contact WHERE Id= :dummyContact.Id];
        }
       
      }

private static Contact createDummyContact(  ) {
        Contact contact = new Contact( );
        contact.FirstName = 'cokolwiek';
        contact.LastName = 'cokolwiek';
        contact.Email = 'piotr.lobejko@accenture.com';
        return contact;
 }


      private static Messaging.SingleEmailMessage createEmailMessage( String dummyContactId )
    {
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage( );
        message.setTargetObjectId( dummyContactId );
        message.setUseSignature( false );
        message.setBccSender( false );
        message.setSaveAsActivity( false );

        return message;
    }
}

