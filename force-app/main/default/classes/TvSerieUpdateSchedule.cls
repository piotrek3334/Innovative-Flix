public with sharing class TvSerieUpdateSchedule implements Schedulable{
    public static final String CRON = '0 0 0 0 7 ?';

    public void execute(SchedulableContext sc){
        TvSerieUpdateBatch tvSerieUpdateBatch = new TvSerieUpdateBatch();
       
    }
}