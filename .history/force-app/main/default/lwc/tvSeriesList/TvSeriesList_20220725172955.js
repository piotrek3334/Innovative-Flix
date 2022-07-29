import { LightningElement, track, wire } from 'lwc';
import searchTvSerie from '@salesforce/apex/TvSeriesController.searchTvSerie';

export default class TvSeriesList extends LightningElement {
    @track searchTerm = '';
	@wire(searchTvSerie, {searchTerm: '$searchTerm'}) tvSeries;

	handleOpenRecordClick(event){
		console.log('z----------z',event.target.value);
		this.tvSerieId = event.target.value;
	}

}