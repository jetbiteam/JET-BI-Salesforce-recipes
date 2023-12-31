/**
 * @description       : 
 * @author            : dmitriy.gatsenko@jetbi.com
 * @group             : 
 * @last modified on  : 10-23-2023
 * @last modified by  : dmitriy.gatsenko@jetbi.com
**/
public with sharing class DNDSortingController {
    @AuraEnabled
    public static void saveSorting(List<SObject> records, String sortingField) {
        try {
            Integer iterationsNum = 0;
            for (Integer i = 10; iterationsNum < records.size(); i+=10) {
                records[iterationsNum].put(sortingField, i);
                iterationsNum++;
            }
            update records;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
