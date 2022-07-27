import { LightningElement } from 'lwc';
import Tv_Serie from '@salesforce/schema/Tv_Serie__c';

export default class ModifyTvSerie extends LightningElement {
    recordId ='a007R00001191OQQAY';

    @wire(,) Tv_Serie;

    handleSucces(event){
        this.recordId = event.detail.id;
    }
}