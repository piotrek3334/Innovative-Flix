import { LightningElement, track, wire } from 'lwc';
import searchTvSerie from '@salesforce/apex/TvSeriesController.searchTvSerie';

export default class TvSeriesList extends LightningElement {
    @track searchTerm = '';
	@wire(searchTvSerie, {searchTerm: '$searchTerm'}) tvSeries;

	handleSearchTermChange(event) {
		window.clearTimeout(this.delayTimeout);
		const searchTerm = event.target.value;
		this.delayTimeout = setTimeout(() => {
			this.searchTerm = searchTerm;
		}, 300);
	}

	get hasResults() {
		return (this.tvSeries.data.length > 0);
	}
}