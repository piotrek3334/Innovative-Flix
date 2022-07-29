import { LightningElement, api } from "lwc";
import tvSerie from "@salesforce/schema/Tv_Serie__c";
//import searchTvSerie from "@salesforce/apex/TvSeriesController.searchTvSerie";

export default class ModifyTvSerie extends LightningElement {
  @api recordId;
  //@wire(searchTvSerie, { searchTerm: "$recordId" }) tvSeries;
  @api objectApiName = tvSerie;
}