import { LightningElement, api} from 'lwc';


export default class TvSeriesTab extends LightningElement {
    @api tvSerie;
	
    tvSerieId;

    handleOpenRecordClick(event){
		console.log('x----------x',event.target.value);
		this.tvSerieId = event.target.value;
	}
	
}