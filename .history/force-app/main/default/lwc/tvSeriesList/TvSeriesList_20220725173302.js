import { LightningElement, track, wire } from 'lwc';
import searchTvSerie from '@salesforce/apex/TvSeriesController.searchTvSerie';

export default class TvSeriesList extends LightningElement {
    @track searchTerm = '';
	@wire(searchTvSerie, {searchTerm: '$searchTerm'}) tvSeries;



	get hasResults() {
		return (this.tvSeries.data.length > 0);
	}
}