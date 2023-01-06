public class AccountHelper {
       //This method updates the status of contacts to 'Active' if they are associated with an active account
    public static void changeContactActiveStatusAccordingToRelatedAccount(List<Account> newAccounts,  Map<Id, Account> mapOfOldAccounts) {
        
        // Create a new list to store accounts that should have their associated contacts updated
        Set<Id> setOfAccountIds = new Set<Id>();
        
        // Iterate through the list of accounts
        for (Account acc : newAccounts) {
            
            // If the account is active and its status has changed since it was added to the map, add it to the new list
            if(acc.Status__c == 'Active' && mapOfOldAccounts.get(acc.Id).Status__c != acc.Status__c) {
                setOfAccountIds.add(acc.Id);
            }
        }
        
        // Query for contacts associated with the accounts in the new list that are not already active
        List<Contact> contactsToUpdate = [SELECT Id, Name, Status__c, AccountId 
                                          FROM Contact 
                                          WHERE AccountId IN : setOfAccountIds AND Status__c != 'Active'];
        
        
        
        // If there are contacts to update, update them in the database
        if(!contactsToUpdate.isEmpty()) {
            
            // Iterate through the contacts to update and set their status to 'Active'
            for (Contact con : contactsToUpdate) {
                con.Status__c = 'Active';
            }
            update contactsToUpdate;
        }
    }
}
