/*
* Description   - OpportunityTrigger For HOW CONTEXT  VARIABLE WORK !! 
* Created by    - Manish Kumar Prajapat            
*/  
trigger OpportunityTrigger on Opportunity (before insert,before Update,before delete,after insert,after update,after delete,after undelete) 
{
    //Before Insert
    if(Trigger.isBefore && Trigger.isInsert)
    {
        System.debug('This Will Fire Only On Before Record Insert') ; 
        System.debug('Check Inserted List => Trigger.New ' + Trigger.New);  //IMPORTANT=>In The Case Of Before Insert Record Not Created Yet So We Not Get ID 
        //Check Inserted List => Trigger.New (Opportunity:{Id=null, IsDeleted=false, AccountId=null, IsPrivate=false, Name=mani demo, Description=null, StageName=Shipped To Customer, Amount=null, Probability=80.0, ExpectedRevenue=null, TotalOpportunityQuantity=null, CloseDate=2022-08-05 00:00:00, Type=Existing Customer - Upgrade, NextStep=null, LeadSource=null, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null, HasOpportunityLineItem=false, Pricebook2
        //|DEBUG|Check Inserted List => Trigger.New (Opportunity:{Id=null, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Context Variable Test, Description=null, StageName=Qualification, Amount=null, Probability=10.0, ExpectedRevenue=null, TotalOpportunityQuantity=null, CloseDate=2022-12-24 00:00:00, Type=Existing Customer - Upgrade, NextStep=null, LeadSource=null, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null, HasOpportunityLineItem=false, Pric
        System.debug('Check Inserted List => Trigger.NewMap ' + Trigger.NewMap);
        //DEBUG|Check Inserted List => Trigger.NewMap null =>  Give NUll Because Trigger.newmap Work ON Before Update, After Insert, AfterUpdate, Afterundelete 
        
        System.debug('Check Inserted List => Trigger.old ' + Trigger.old);
        //DEBUG|Check Insert List => Trigger.old null   =>  Give NUll Because Trigger.old  Work ON  Update, delete .....!!!
        
        System.debug('Check Inserted List => Trigger.oldMap ' + Trigger.oldMap);
        //|DEBUG|Check Inserted List => Trigger.oldMap null     => =>  Give NUll Because Trigger.old  Work ON  Update, delete .....!!!
    }
    
    //After Insert
    if(Trigger.isAfter && Trigger.isInsert)
    {
        System.debug('This Will Fire Only On After Record Insert') ;
        System.debug('Check Inserted List => Trigger.New ' + Trigger.New);  //IMPORTANT=>Once The Record Hits The Database Its Creates The Record ID Thats Why This Time We Got ID
        //Trigger.New (Opportunity:{Id=0065i00000B7vHrAAJ, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Context Variable Test, Description=null, StageName=Qualification, Amount=null, Probability=10, ExpectedRevenue=null, TotalOpportunityQuantity=null, CloseDate=2022-12-24 00:00:00, Type=Existing Customer - Upgrade, NextStep=null, LeadSource=null, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null, HasOpportunityLineItem
        // 
        System.debug('Check Inserted List => Trigger.NewMap ' + Trigger.NewMap);
        //Trigger.NewMap {0065i00000B7vHrAAJ=Opportunity:{Id=0065i00000B7vHrAAJ, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Context Variable Test, Description=null, StageName=Qualification, Amount=null, Probability=10, ExpectedRevenue=null, TotalOpportunityQuantity=null, CloseDate=2022-12-24 00:00:00, Type=Existing Customer - Upgrade, NextStep=null, LeadSource=null, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null,
         
        System.debug('Check Inserted List => Trigger.old ' + Trigger.old);
        //|DEBUG|Check Insert List => Trigger.old null => Work in Delete and Update
        
        System.debug('Check Inserted List => Trigger.oldMap ' + Trigger.oldMap);
        //DEBUG|Check Inserted List => Trigger.oldMap null  =>=> Work in Delete and Update
        
    }
    
    //Before Update
    if(Trigger.isBefore && Trigger.isUpdate)
    {
        System.debug('This Will Fire Only On Before Record Update') ; 
        System.debug('Check Inserted List => Trigger.New ' + Trigger.New);
        //|DEBUG|Check Inserted List => Trigger.New (Opportunity:{Id=0065i000007JDGCAA4, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Second Record, Description=null, StageName=Qualification, Amount=1000.00, Probability=10.0, ExpectedRevenue=100.00, TotalOpportunityQuantity=null, CloseDate=2022-07-30 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Phone Inquiry, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null
        
        System.debug('Check Inserted List => Trigger.NewMap ' + Trigger.NewMap);
        //|DEBUG|Check Inserted List => Trigger.NewMap {0065i000007JDGCAA4=Opportunity:{Id=0065i000007JDGCAA4, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Second Record, Description=null, StageName=Value Proposition, Amount=1000.00, Probability=50.0, ExpectedRevenue=500.00, TotalOpportunityQuantity=null, CloseDate=2022-07-30 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Phone Inquiry, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline       
        
        System.debug('Check Inserted List => Trigger.old ' + Trigger.old);
        //|DEBUG|Check Inserted List => Trigger.old (Opportunity:{Id=0065i000007JDGCAA4, IsDeleted=false, AccountId=null, IsPrivate=false, Name=FirstRecord 2, Description=null, StageName=Qualification, Amount=1000.00, Probability=10, ExpectedRevenue=100.00, TotalOpportunityQuantity=null, CloseDate=2022-07-30 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Phone Inquiry, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null
        
        System.debug('Check Inserted List => Trigger.oldMap ' + Trigger.oldMap);
        //|DEBUG|Check Inserted List => Trigger.oldMap {0065i000007JDGCAA4=Opportunity:{Id=0065i000007JDGCAA4, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Second Record, Description=null, StageName=Qualification, Amount=1000.00, Probability=10, ExpectedRevenue=100.00, TotalOpportunityQuantity=null, CloseDate=2022-07-30 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Phone Inquiry, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, Campaig
    }
    
    //After Update
    if(Trigger.isAfter && Trigger.isUpdate)
    {
        System.debug('This Will Fire Only On After Record Update') ; 
        System.debug('Check Inserted List => Trigger.New ' + Trigger.New);
        //|DEBUG|Check Inserted List => Trigger.New (Opportunity:{Id=0065i000007JDGCAA4, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Second Record, Description=null, StageName=Qualification, Amount=1000.00, Probability=10, ExpectedRevenue=100.00, TotalOpportunityQuantity=null, CloseDate=2022-07-30 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Phone Inquiry, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null
        
        System.debug('Check Inserted List => Trigger.NewMap ' + Trigger.NewMap);
        //|DEBUG|Check Inserted List => Trigger.NewMap {0065i000007JFOmAAO=Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Downgrade, NextStep=null, LeadSource=Partner Referral, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryNam|DEBUG|Check Inserted List => Trigger.NewMap {0065i000007JFOmAAO=Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Downgrade, NextStep=null, LeadSource=Partner Referral, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryNam
        
        System.debug('Check Inserted List => Trigger.old ' + Trigger.old);
        //|DEBUG|Check Inserted List => Trigger.old (Opportunity:{Id=0065i000007JDGCAA4, IsDeleted=false, AccountId=null, IsPrivate=false, Name=FirstRecord 2, Description=null, StageName=Qualification, Amount=1000.00, Probability=10, ExpectedRevenue=100.00, TotalOpportunityQuantity=null, CloseDate=2022-07-30 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Phone Inquiry, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null, HasOpportuni
        
        System.debug('Check Inserted List => Trigger.oldMap ' + Trigger.oldMap);
        //|DEBUG|Check Inserted List => Trigger.oldMap {0065i000007JFOmAAO=Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Purchased List, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryNam
    }
    
    //Before Delete
    if(Trigger.isBefore && Trigger.isDelete)
    {
        System.debug('This Will Fire Only On Before Record Delete') ; 
        
        System.debug('Check Inserted List => Trigger.New ' + Trigger.New);
        //|DEBUG|Check Inserted List => Trigger.New null   =>Trigger.New  Not Work In Before delete!!!
        
        System.debug('Check Inserted List => Trigger.NewMap ' + Trigger.NewMap);
        //|DEBUG|Check Inserted List => Trigger.NewMap null  => Trigger.NewMap Not Work In Before Delete!!!
        
        System.debug('Check Inserted List => Trigger.old ' + Trigger.old);
        //|DEBUG|Check Inserted List => Trigger.old (Opportunity:{Id=0065i000007JDGCAA4, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Second Record, Description=null, StageName=Qualification, Amount=1000.00, Probability=10, ExpectedRevenue=100.00, TotalOpportunityQuantity=null, CloseDate=2022-07-30 00:00:00, Type=Existing Customer - Replacement, NextStep=null, LeadSource=Phone Inquiry, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId=null, HasOpportuni
        
        System.debug('Check Inserted List => Trigger.OldMap ' + Trigger.OldMap);
        //|DEBUG|Check Inserted List => Trigger.old (Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Downgrade, NextStep=null, LeadSource=Partner Referral, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignId
        
    }
    
    //After Delete
    if(Trigger.isAfter && Trigger.isDelete)
    {
        System.debug('This Will Fire Only On After Record delete') ; 
        System.debug('Check Inserted List => Trigger.New ' + Trigger.New);
        //|DEBUG|Check Inserted List => Trigger.New null   =>Trigger.New  Not Work In AfterDelete!
        
        System.debug('Check Inserted List => Trigger.NewMap ' + Trigger.NewMap);
        //|DEBUG|Check Inserted List => Trigger.NewMap null  > Trigger.NewMap Not Work In After Delete!!!
        
        System.debug('Check Inserted List => Trigger.old ' + Trigger.old);
        //|DEBUG|Check Inserted List => Trigger.old (Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Downgrade, NextStep=null, LeadSource=Partner Referral, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignI
        
        System.debug('Check Inserted List => Trigger.OldMap ' + Trigger.OldMap);
        //|DEBUG|Check Inserted List => Trigger.OldMap {0065i000007JFOmAAO=Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Downgrade, NextStep=null, LeadSource=Partner Referral, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryNa
        
    }  
    
    //After Undelete
    if(Trigger.isAfter && Trigger.isUndelete)
    {
        System.debug('This Will Fire Only On After Record Undelete') ; 
        System.debug('Check Inserted List => Trigger.New ' + Trigger.New);
        //|DEBUG|Check Inserted List => Trigger.New (Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Downgrade, NextStep=null, LeadSource=Partner Referral, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryName=Pipeline, CampaignI
        
        System.debug('Check Inserted List => Trigger.NewMap ' + Trigger.NewMap);
        //|DEBUG|Check Inserted List => Trigger.NewMap {0065i000007JFOmAAO=Opportunity:{Id=0065i000007JFOmAAO, IsDeleted=false, AccountId=null, IsPrivate=false, Name=Training Coordinator, Description=null, StageName=Qualification, Amount=121.00, Probability=10, ExpectedRevenue=12.100000000000001, TotalOpportunityQuantity=null, CloseDate=2022-08-01 00:00:00, Type=Existing Customer - Downgrade, NextStep=null, LeadSource=Partner Referral, IsClosed=false, IsWon=false, ForecastCategory=Pipeline, ForecastCategoryNa
        
        System.debug('Check Inserted List => Trigger.old ' + Trigger.old);
        //|DEBUG|Check Inserted List => Trigger.old null   =>Trigger.old not work on undelete but work on Update,Delete!!
        
        System.debug('Check Inserted List => Trigger.oldMap ' + Trigger.oldMap);
        //|DEBUG|Check Inserted List => Trigger.oldMap null => Trigger.oldMap not work on undelete but work on Update,Delete!!
        
    }
    
}