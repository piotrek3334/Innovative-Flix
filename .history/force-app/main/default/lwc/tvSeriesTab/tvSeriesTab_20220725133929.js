import { LightningElement, api, wire} from 'lwc';
import getTvSerie from '@salesforce/apex/TvSeriesController.getTvSerie';

export default class TvSeriesTab extends LightningElement {
    @api tvSerieId;
	
	@wire(getTvSerie, {tvSerieId: '$tvSerieId'}) tvSeries;
}