import { LightningElement,api,wire } from 'lwc';
import searchEpisode from '@salesforce/apex/EpisodesController.searchEpisodes';

export default class EpisodesList extends LightningElement {
    @api seasonId;

    @wire(searchEpisode, {seasonId: '$seasonId'}) episodes;
}