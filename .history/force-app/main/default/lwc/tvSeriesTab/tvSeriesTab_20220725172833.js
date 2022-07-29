import { LightningElement, track, api} from 'lwc';


export default class TvSeriesTab extends LightningElement {
    @api tvSerie;
	
    tvSerieId = 'a007R00001191OQQAY';

    handleOpenRecordClick(event){
		console.log('x----------x',event.target.value);
		console.log('z----------x', event.target.value);
		this.tvSerieId = event.target.value;
	}


}