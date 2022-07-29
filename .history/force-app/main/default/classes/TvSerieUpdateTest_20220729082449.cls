@IsTest
public with sharing class TvSerieUpdateTest {
    @IsTest 
    static void TvSerieUpdateTest() {
        Test.startTest();
        System.assertEquals(0, Limits.getEmailInvocations(), 'No emails should be sent');


        Integer emailbefore = Limits.getEmailInvocations();
        TvSerieUpdateBatch tvSerieUpdateBatch = new TvSerieUpdateBatch();
        Database.executeBatch(tvSerieUpdateBatch,50);

        system.assertNotEquals(emailbefore,Limits.getEmailInvocations(),'should have decreased'); 
       // TvSerieUpdateBatch tvSerieUpdateBatch = new TvSerieUpdateBatch();
       // Database.executeBatch(tvSerieUpdateBatch,50);
        
       // System.assertEquals(1, Limits.getEmailInvocations(), 'Emails should be sent');
        Test.stopTest();
    }
}
