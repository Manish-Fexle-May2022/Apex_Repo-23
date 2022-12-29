public with sharing class InitializeMaps {
    public static void level1Map() {
        Map<String,String> level1Map = new Map<String, String>();
        level1Map.put('1','Manish');
        level1Map.put('5','Shubham');
        level1Map.put('45','Bharat');
        level1Map.put('98','Gaurav');
        System.debug(level1Map);
    }
    
    public static void level2Map() {
        Map<String, List<String>> level2Map = new Map<String, List<String>>();
        level2Map.put('Rajasthan', new List<String> {'Jaipur', 'Ajmer', 'Sikar', 'Bharatpur', 'Kota'});
        level2Map.put('Uttar Pradesh', new List<String> {'Mathura', 'Kanpur', 'Gorakhpur', 'Hathras', 'Lucknow'});
        level2Map.put('Maharashtra', new List<String> {'Ahmednagar', 'Akola', 'Aurangabad', 'Kohlapur', 'Chandrapur'});
        level2Map.put('Uttarakhand', new List<String> {'Chamoli', 'Bageshwar', 'Haridwar', 'Pithoragarh', 'Uttarkashi'});
        level2Map.put('Maharashtra', new List<String> {'Nashik', 'Mumbai', 'Pune', 'Shirdi', 'Kolhapuri'});
        System.debug(level2Map);
    }

    
    public static void level3Map() {
        Map<String, Map<String, String>> level3Map = new Map<String, Map<String, String>>();
        level3Map.put('India', new Map<String, String> {'Jaipur' => 'Ajmer'});
        level3Map.put('America', new Map<String, String> {'California' => 'Los Angeles'});
        level3Map.put('Australia', new Map<String, String> {'Sydney' => 'Canberra'});
        level3Map.put('Sri Lanka', new Map<String, String> {'Colombo' => 'Ampara'});
        level3Map.put('Japan', new Map<String, String> {'Tokyo' => 'Asakusa'});
        System.debug(level3Map);
    }
    
    public static void level4Map() {
        Map<String, Map<String, List<String>>> level4Map = new Map<String, Map<String, List<String>>>();
        level4Map.put('India', new Map<String, List<String>> {'Rajasthan' => new List<String> {'Jaipur', 'Ajmer', 'Sikar', 'Bharatpur', 'Kota'}});
        level4Map.put('US', new Map<String, List<String>> {'Colorado' => new List<String> {'Big Sandy School District 100J', 'Creede School District', 'Monte Vista School District C-8' }});
        level4Map.put('Sri Lanka', new Map<String, List<String>> {'Badulla' => new List<String> {'Bogoda Wooden Bridge', 'Army Garrison Town', 'Namunukula Mountain Range' }});
        level4Map.put('Switzerland', new Map<String, List<String>> {'schwyz' => new List<String> {'Riemenstalden','Illgau','Steinen','Unteriberg','Rothenthurm','Alpthal','Muotathal'}});
        level4Map.put('Bangladesh', new Map<String, List<String>> {'Barisha' => new List<String> {'Bhola','Jhalokati','Patuakhali'}});
        System.debug(level4Map);
    }

    public static void level5Map() {
        Map<String, Map<String, List<String>>> level5Map = new Map<String, Map<String, List<String>>>();
        level5Map.put('Bedroom', new Map<String, List<String>>{'Wooden'=> new List<String>{'Side Table', 'Bed', 'Wardrobe'}, 'Electronics' => new List<String>{'TV', 'Speaker', 'Light'}, 'Glass' => new List<String>{'Showpiece'}});
        level5Map.put('Kitchen', new Map<String, List<String>>{'Wooden'=> new List<String>{'Wardrobe'}, 'Electronics' => new List<String>{'Oven', 'Water Purifier', 'Fridge'}, 'Glass' => new List<String>{'Crockery', 'Glasses'}});
        level5Map.put('Hall', new Map<String, List<String>>{'Wooden'=> new List<String>{'Wardrobe'}, 'Electronics' => new List<String>{'Table', 'Sofa', 'Chair'}, 'Glass' => new List<String>{'Showpiece'}});
        System.debug(level5Map);
    }

    public static void level6Map() {
        Map<String, Map<String, Map<String, List<String>>>> level6Map = new Map<String, Map<String, Map<String, List<String>>>>();
        level6Map.put('IIT Roorkie', new Map<String, Map<String, List<String>>>{'B.Sc' =>new Map<String, List<String>>{'Prof. S.K. Verma' => 
        new List<String>{'Manish', 'Bharat', 'Shubham'}, 'Prof. Hemank Awasthi' => new List<String>{'Abhishek', 'Leena', 'Soumy'}}, 'BCA' => new Map<String, List<String>>{'Prof. Sukrit Goswami' =>
        new List<String>{'Vishal', 'Nikhil', 'Prem'}, 'Prof. Hari Shankar' => new List<String>{'Yash', 'Suraj', 'Manoj'}}});
        level6Map.put('IIT Kanpur', new Map<String, Map<String, List<String>>>{'B.Sc' => new Map<String, List<String>>{'Prof. Ashneer Grover' => 
        new List<String>{'Manish', 'Bharat', 'Rajiv'}}, 'BCA' =>
        new Map<String, List<String>>{'Prof. Rajat Arora' => new List<String>{'Nidhi', 'Prem', 'Leena'}}});
        System.debug(level6Map);
    }


    public static void level9Map() {
        Map<String, Map<String, List<String>>> level9Map = new Map<String, Map<String, List<String>>>();
        level9Map.put('Bedroom', new Map<String, List<String>>{'Wooden'=> new List<String>{'Side Table', 'Bed', 'Wardrobe'}, 'Electronics'
        => new List<String>{'TV', 'Speaker', 'Light'}, 'Glass' => new List<String>{'Showpiece'}});
        level9Map.put('Kitchen', new Map<String, List<String>>{'Wooden'=> new List<String>{'Wardrobe'}, 'Electronics' 
        => new List<String>{'Oven', 'Water Purifier', 'Fridge'}, 'Glass' => new List<String>{'Crockery', 'Glasses'}});
        level9Map.put('Hall', new Map<String, List<String>>{'Wooden'=> new List<String>{'Wardrobe'}, 'Electronics'
        => new List<String>{'Table', 'Sofa', 'Chair'}, 'Glass' => new List<String>{'Showpiece'}});
        System.debug(level9Map);
    }
      
    public static void level10Map() {
        Map<String, Map<String, List<String>>> mapOfHomeItem = new Map<String, Map<String, List<String>>>();
        String homeItem = 'Bedroom-Wooden-SideTable, Bedroom-Wooden-Bed, Bedroom-Wooden-Wardrobe, Bedroom-Electronics-TV,'  
            + 'Bedroom-Electronics-Speaker, Bedroom-Electronics-Light, Bedroom-Glass-Showpiece, Kitchen-Glass-Crokery,' 
            + 'Kitchen-Glass-Glasses, Kitchen-Electronics-Oven' ;
        
        for(String item : homeItem.split(',')) {
            
            List<String> subItems = item.split('-');
            if(!mapOfHomeItem.containsKey(subItems[0])) {
                mapOfHomeItem.put(subItems[0], new Map<String, List<String>>());
            } 
            
            if(!mapOfHomeItem.get(subItems[0]).containsKey(subItems[1])) {
                mapOfHomeItem.get(subItems[0]).put(subItems[1], new List<String>());
            }
            
            mapOfHomeItem.get(subItems[0]).get(subItems[1]).add(subItems[2]);
        }
        System.debug(mapOfHomeItem);
    }
    
    public static void level11Map() {
        List<Account> listOfAccount = [Select Id From Account ];
        List<Contact> listOfContact = [Select Id, Name, AccountId From Contact ];
        Map<Id, Map<Id, Contact>> mapOfAccountAndContact = new Map<Id, Map<Id, Contact>>();
        for(Account acc : listOfAccount) {
            Map<Id, Contact> conMap = new Map<Id, Contact>();
            for(Contact con : listOfContact) {
                if(acc.Id == con.AccountId) {
                        conMap.put(con.Id, Con);
                }
            } 
            mapOfAccountAndContact.put(acc.Id, conMap); 
        }
        System.debug(mapOfAccountAndContact);      
    }

    public static void level7Map() {
        Map<Id, Account> level7Map = new Map<Id, Account>([Select Id, Name, AccountNumber, AnnualRevenue From Account]);
        System.debug(level7Map);
    }

    public static void level8Map() {
        List<Account> accList = [Select Id, (Select Id, Name From Contacts) From Account Limit 10];
        Map<Id, List<Contact>> level8Map = new Map<Id, List<Contact>>();
        for (Account acc : accList) {
            level8Map.put(acc.Id, acc.Contacts);
        }
        System.debug(level8Map);
    }
    
    /*
     *public static Map<Id, List<Opportunity> getOppWithAccount(List<Case> cases) {
    }*/
    public static Map<Id, List<Opportunity>> getOppWithAccount(List<Case> caseList) {
        Set<Id> accIdSet = new Set<Id>();
        for(Case c: caseList) {
            accIdSet.add(c.AccountId);
        }
        List<Account> accList = [Select Id, Name From Account Where Id in:accIdSet];
        List<Opportunity> oppList = [Select Id, Name, AccountId From Opportunity Where AccountId in: accList];
        System.debug('Account List - ' + accList);
        System.debug('Opportunity List - ' + oppList);
        Map<Id, List<Opportunity>> mapOfOpportunitiesWithAccount = new Map<Id, List<Opportunity>>();
        for(Account acc: accList) {
           List<Opportunity> tempOppList =  new List<Opportunity>();
           for(Opportunity opp: oppList) {
              if(acc.id == opp.AccountId) {
                 tempOppList.add(opp);
              }
           }
           mapOfOpportunitiesWithAccount.put(acc.Id, tempOppList);
        }
        System.debug('Map of Opportunities - ' + mapOfOpportunitiesWithAccount);
        return mapOfOpportunitiesWithAccount;
    }

    /*For testing purpose
     List<Case> caseList = [Select Id, CaseNumber, AccountId From Case Limit 10];
     InitializeMaps.getOppWithAccount(caseList);*/

    
    /*
     * public static Map<Id, List<Opporunity> getOppWithContact(List<Case> cases) {   
    }*/
    public static Map<Id, List<Opportunity>> getOppWithContact(List<Case> caseList) {
        Set<Id> conIdSet = new Set<Id>();
        for(Case c: caseList) {
            conIdSet.add(c.ContactId);
        }
        List<Contact> conList = [Select Id, Name From Contact Where Id in:conIdSet];
        List<Opportunity> oppList = [Select Id, Name, Contact__c From Opportunity Where Contact__c in: conList];
        System.debug('Contact List - ' + conList);
        System.debug('Opportunity List - ' + oppList);
        Map<Id, List<Opportunity>> mapOfOpportunitiesWithContact = new Map<Id, List<Opportunity>>();
        for(Contact con: conList) {
           List<Opportunity> tempOppList =  new List<Opportunity>();
           for(Opportunity opp: oppList) {
              if(con.id == opp.Contact__c) {
                 tempOppList.add(opp);
              }
           }
           mapOfOpportunitiesWithContact.put(con.Id, tempOppList);
        }
        System.debug('Map of Opportunities - ' + mapOfOpportunitiesWithContact);
        return mapOfOpportunitiesWithContact;
    } 
    
    /*For testing purpose
    List<Case> caseList = [Select Id, CaseNumber, ContactId From Case];
    InitializeMaps.getOppWithContact(caseList);*/
}