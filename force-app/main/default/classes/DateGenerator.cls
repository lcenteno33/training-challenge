public with sharing class DateGenerator {
    
    public static List<Account> createAccountRecords(){
        List<Account> accountList = new List<Account>();
        for ( Integer i = 0; i < 100; i++ ) {
            Account newAccount = new Account();
            newAccount.Name = 'My new Account ' + i.format();
            newAccount.AnnualRevenue = Integer.valueof((Math.random() * 1000000));

            if ( newAccount.AnnualRevenue < 250000 ) {
                newAccount.CustomerPriority__c = 'Low';  
            } else if ( newAccount.AnnualRevenue >= 250000 && newAccount.AnnualRevenue <= 500000 ){
                newAccount.CustomerPriority__c = 'Medium';
            } else if ( newAccount.AnnualRevenue > 500000 ){
                newAccount.CustomerPriority__c = 'High';
            }

            accountList.add(newAccount);
        }
        
        return accountList; 

    }


}