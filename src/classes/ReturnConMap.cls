public with sharing class ReturnConMap {
    public static List<Contact> returnConList(List<Id> accIdList) {
        List<Contact> conList = [Select Id, Name, AccountId From Contact Where AccountId In : accIdList];
        System.debug('conList'+ conList);
        return conList;
    }
    
    public static Map<Id, List<Contact>> returnConMap1(List<Id> accIdList) {
        List<Contact> conList = returnConList(accIdList);
        Map<Id, List<Contact>> conMap = new Map<Id,List<Contact>>();
        for (Id accId : accIdList) {
            List<Contact> tempConList = new List<Contact>();
            for (Contact con : conList) {
                if (accId == con.AccountId) {
                    tempConList.add(con);
                }
            }
            conMap.put(accId, tempConList);
        }      
        System.debug('conMap=' +conMap);
        return conMap;
    }
}