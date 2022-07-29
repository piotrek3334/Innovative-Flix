import { LightningElement, track, api} from 'lwc';


export default class TvSeriesTab extends LightningElement {
    @api tvSerie;
	
    @track tvSerieId;

    handleOpenRecordClick(event){
		console.log('x----------x',event.target.value);
		this.tvSerieId = event.target.value;
	}
	
}