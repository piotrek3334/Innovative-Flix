import { LightningElement, api, wire} from 'lwc';
import searchSeasons from '@salesforce/apex/SeasonsController.searchSeasons';

export default class SeasonsList extends LightningElement {
    @api tvSerieId = 'a007R00001191OQQAY';

    @wire(searchSeasons, {searchTerm: '$tvSerieId'}) seasons;


}