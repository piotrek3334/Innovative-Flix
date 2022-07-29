import { LightningElement, api, wire } from "lwc";
import tvSerie from "@salesforce/schema/Tv_Serie__c";
import searchTvSerie from "@salesforce/apex/TvSeriesController.searchTvSerie";

export default class ModifyTvSerie extends LightningElement {
  @api recordId = "a007R000011YmCqQAK";
  @wire(searchTvSerie, { searchTerm: "$recordId" }) tvSeries;
  @api objectApiName = tvSerie;
}
