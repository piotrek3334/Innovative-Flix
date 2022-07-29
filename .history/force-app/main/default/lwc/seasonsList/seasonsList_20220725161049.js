import { LightningElement, api, wire} from 'lwc';
import searchSeasons from '@salesforce/apex/SeasonsController.searchSeasons';

export default class SeasonsList extends LightningElement {
    @api tvSerieId;

    @wire(searchSeasons, {searchTerm: '$tvSerieId'}) seasons;


}