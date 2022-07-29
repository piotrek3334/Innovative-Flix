import { LightningElement,api,wire } from 'lwc';
import searchEpisode from '@salesforce/apex/SeasonsController.searchSeasons';

export default class EpisodesList extends LightningElement {
    @api episodeId;

    @wire(searchEpisode, {episodeId: '$episodeId'}) episodes;
}