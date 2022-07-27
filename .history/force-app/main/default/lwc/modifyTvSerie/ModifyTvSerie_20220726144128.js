import { LightningElement, track } from 'lwc';

export default class ModifyTvSerie extends LightningElement {
    @track recordId ='a007R00001191OQQAY';

    handleSucces(event){
        this.recordId = event.detail.id;
    }
}