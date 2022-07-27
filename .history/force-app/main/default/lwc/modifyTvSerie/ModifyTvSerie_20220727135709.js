import { LightningElement, api } from "lwc";
import tvSerie from "@salesforce/schema/Tv_Serie__c";

export default class ModifyTvSerie extends LightningElement {
  recordId = "0017R00002oWK3ZQAW";
  @api objectApiName = tvSerie;
}
