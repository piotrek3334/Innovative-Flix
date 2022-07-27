import { LightningElement, track } from 'lwc';

export default class ModifyTvSerie extends LightningElement {
    @track recordId;

    handleSucces(event){
        this.recordId = event.detail.id;
    }
}