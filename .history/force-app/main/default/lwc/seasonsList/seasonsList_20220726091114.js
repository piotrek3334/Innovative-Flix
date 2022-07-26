import { LightningElement, track, api, wire} from 'lwc';
import searchSeasons from '@salesforce/apex/SeasonsController.searchSeasons';

export default class SeasonsList extends LightningElement {
    @api tvSerieId;
    @track seasonId;
    @wire(searchSeasons, {tvSerieId: '$tvSerieId'}) seasons;

    handleOpenRecordClick(event){
		console.log('s----------x',event.target.value);
		console.log('s----------x', event.target.value);
		this.seasonId = event.target.value;
	}
}