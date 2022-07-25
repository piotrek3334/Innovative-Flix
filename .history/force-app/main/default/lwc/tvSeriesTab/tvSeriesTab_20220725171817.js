import { LightningElement, track, api} from 'lwc';


export default class TvSeriesTab extends LightningElement {
    @api tvSerie;
	
    @track tvSerieId = 'a007R00001191OQQAY';

    handleOpenRecordClick(event){
		console.log('x----------x',event.target.value);
		this.tvSerieId = event.target.value;
	}

	get hasResults() {
		return ();
	}

	
}