import { LightningElement, track, api} from 'lwc';


export default class TvSeriesTab extends LightningElement {
    @api tvSerie;
	
    @track tvSerieId = tvSerie.Id;

    handleOpenRecordClick(event){
		console.log('x----------x',event.target.value);
		this.tvSerieId = event.target.value;
	}

	get hasResults() {
		return (this.tvSeries.data.length > 0);
	}

	
}