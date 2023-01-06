public class ModifyOpportunity {
    public static void modifyAccountsOpportunityFields(List<Account> listOfAccount){
        // Create a copy of the input list
        List<Account> updatedListOfAccounts = new List<Account>(listOfAccount);
        
        // Create a set of Account Ids for all Account records in the input list that have the "Validate Opportunity" field set to true
        Set<Id> accountIds = new Set<Id>();
        for (Account a:updatedListOfAccounts){
            if(a.Validate_Opportunity__c ==true ){
                accountIds.add(a.Id);
            }
            else{
                a.Latest_Opportunity__c = null;
                a.Latest_Opportunity_Amount__c = null;  
            }
        }
        
        // Query for the most recently modified Contact records related to these Account records
        List<Contact> latestListOfContacts = [SELECT Id, Name
                                              FROM Contact 
                                              WHERE AccountId IN :accountIds ORDER BY LastModifiedDate DESC];
        
        // If there are no Contact records, skip the rest of the code
        if (latestListOfContacts.isEmpty()) {
            return;
        }
        
        // Create a set of Contact Ids for the most recently modified Contact records
        Set<Id> contactIds = new Set<Id>();
        for (Contact con:latestListOfContacts) {
            contactIds.add(con.Id);
        }
        
        // Query for the most recently modified Opportunity records related to these Contact records
        List<Opportunity> latestOpportunities = [SELECT Id, ContactId, Amount 
                                                 FROM Opportunity 
                                                 WHERE ContactId IN :contactIds ORDER BY LastModifiedDate DESC];
        
        // Update the "Latest Opportunity" and "Latest Opportunity Amount" fields on each Account record in the updated list
        for (Account acc:updatedListOfAccounts) {
            if (acc.Validate_Opportunity__c) {
                acc.Latest_Opportunity__c = latestOpportunities[0].Id;
                acc.Latest_Opportunity_Amount__c = latestOpportunities[0].Amount;
            }      
        }
    } 
}

/*When an Account is updated For Example when someone edits the Account record add a check like
it should be done to see if the "Validate Opportunity" field is true And
If"Validate Opportunity" is true, then the "Latest Opportunity" lookup field on the Account should be updated
withe most recently modified Contact's most recent Opportunity.
Inaddition, the "Latest Opportunity Amount" field on the Account should be updated with the Amount field of the Opportunity.*/