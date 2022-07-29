import { LightningElement, api, wire } from "lwc";
import tvSerie from "@salesforce/schema/Tv_Serie__c";
import searchTvSerie from "@salesforce/apex/TvSeriesController.searchTvSerie";

export default class ModifyTvSerie extends LightningElement {
  recordId;
  @wire(searchTvSerie, { searchTerm: "$searchTerm" }) tvSeries;
  @api objectApiName = tvSerie;
}
