import { LightningElement, track } from 'lwc';
import TV_SERIE_C from '@salesforce/schema/Tv_Serie__c';

export default class ModifyTvSerie extends LightningElement {
    recordId ='a007R00001191OQQAY';

    handleSucces(event){
        this.recordId = event.detail.id;
    }
}