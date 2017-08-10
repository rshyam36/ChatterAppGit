/*
Written By: Radhe Shyam- Kloudrac.com
Date : 8 August 2017
Description: This Trigger handles the helper classess to execute the Auto Follow up logic.
*/


trigger KRac_AutoFollowRecords_AccountTrigger on Account(before insert, before update, after insert, after update) {


    if (Trigger.isBefore) {

        if (Trigger.isInsert) {
        
           
        }

        if (Trigger.isUpdate) {}
    }

    if (Trigger.isAfter) {

        if (Trigger.isInsert) {
                 KRac_AutoFollowRecords_TriggerHandler.ReadValuesFromRule(Trigger.new); //Pass the List of all Accounts
        }

        if (Trigger.isUpdate) {
                  KRac_AutoFollowRecords_TriggerHandler.ReadValuesFromRule(Trigger.new);
        }
    }

}