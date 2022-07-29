import { LightningElement, api } from "lwc";
import tvSerie from "@salesforce/schema/Tv_Serie__c";

export default class ModifyTvSerie extends LightningElement {
  recordId;
  @api objectApiName = tvSerie;
}
