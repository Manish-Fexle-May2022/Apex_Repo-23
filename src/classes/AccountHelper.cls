public class AccountHelper {
    public static void changeContactActiveStatusAccordingToRelatedAccount(List<Account> accList) {
        List<Account> newAccList = new List<Account>();
        for (Account acc : accList) {
            if(acc.Status__C == 'Active') {
                newAccList.add(acc);
            }
        }
        List<Contact> conList = [Select Id, Name, Status__c, AccountId From Contact Where AccountId in : newAccList AND Status__c != 'Active'];
        for (Contact con : conList) {
             con.Status__c = 'Active';
        }
        update conList;
    }
}