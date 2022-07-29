@IsTest
public with sharing class TvSerieUpdateTest {
    @IsTest 
    static void TvSerieUpdateTest() {
        Test.startTest();
        Integer emailbefore = Limits.getEmailInvocations();
        TvSerieUpdateBatch tvSerieUpdateBatch = new TvSerieUpdateBatch();
        tvSerieUpdateBatch.sentEmail();
        system.assertNotEquals(emailbefore,Limits.getEmailInvocations(),'Error'); 
        Test.stopTest();
    }
}
