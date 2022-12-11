public class AccConAndOppOperations {
    public static List<Account> allAccounts(){
        list<account> myaccounts = new List<Account>();
        myaccounts = [select name, annualrevenue, type, accountsource from account];

        return myaccounts;
    }

    public static List<Opportunity> allOpp(string source, string stage){
        List<Opportunity> myOpp = [select name, leadsource, stagename from opportunity where leadsource=:source and stagename=:stage];
        return myOpp;

    }

    public static void printAccountOpps(){
        List<Account> myAcc = [select name, annualrevenue, (select name, amount from opportunities where stagename='closed won') from account where type='customer - direct'];

        for (Account eachAcc : myAcc) {
        system.debug('Account Name ' +eachAcc.name +' Account Revenue '+ eachAcc.annualrevenue);
        for (opportunity eachOpp : eachAcc.opportunities) {
            system.debug('Opp name '+ eachOpp.name +' Opp Amount '+eachOpp.amount);   
        }
   
    }
  }

  public static Decimal sumOpp(){
    List<Opportunity> closedWonOpp = [select id, stagename, amount from Opportunity where StageName = 'Closed Won'];
         decimal sum = 0;
         for(opportunity eachOpp : closedWonOpp){
         sum += eachOpp.amount;
         }
         return sum;
    }

    public static List<Account> accStageName(string stgName){

        List<Account> accClosedWonOpp = [ select id, name from Account WHERE id IN (select accountid from opportunity where StageName=: stgName) ];
        
        return accClosedWonOpp;
    }

    public static List<Account> accContactMethod(){

        List<Account> AccContact = [ select id, name from account where id IN (select Accountid from Contact where id!=null)];
                                                                                //select Accountid from Contact ===> kullanabiliriz 
        return AccContact;
    }

    public static void createContactMethod(String accId) {
        Account sampleAccount = [select id, name FROM Account WHERE id = : accId];
        Contact newContact = new Contact();
        newContact.lastName = sampleAccount.Name;
        newContact.AccountId = sampleAccount.Id;
        System.debug((newContact));
        insert newContact;

    }

    public static void updateDescription() {
        List<Opportunity> top10 = [select id, name, Description from Opportunity order by Amount desc limit 10];
        for (Opportunity eachOpp: top10){
            eachOpp.Description = 'This is one of the top 10 opportunities. Please work on this properly ';
        }
        update top10;
        system.debug (top10);
    }

    public static List<Opportunity> herseyMethodu(string AccID, integer n) {
        Account sampleAccount = [select id, name, AnnualRevenue from Account where id =: AccID];
        list <Opportunity> nOpp = new list <Opportunity>();
        if (n<=0){
            system.debug ('Print the message as “Please tell us how many opportunities needs to be created');
        } else {
        for (Integer i = 0; i < n; i++) {
            Opportunity newOpp = new Opportunity();
            newOpp.Name = sampleAccount.name;
            if (sampleAccount.AnnualRevenue != null){ 
            newOpp.Amount=sampleAccount.AnnualRevenue/n;
            }
            newOpp.AccountId = accId;
            newOpp.CloseDate = date.today().addYears(3);
            newOpp.StageName = 'Prospecting';
            nOpp.add (newOpp);
        }
        }
        if (!nOpp.isEmpty()){
        insert nOpp;
        }
        System.debug(nOpp);
        return nOpp;
    }

    public static void contactCreate(){
        List<Account> noContactAccount = [select id, name from Account where id  not IN(select Accountid from contact)];
        list<contact> ListContact = new list<contact>();
        for (Account eachAccount : noContactAccount) {
            contact newContact = new Contact();
            newContact.AccountId= eachAccount.Id;
            newContact.lastName = eachAccount.name;
            ListContact.add(newContact);    
        }

        insert ListContact;

 }


 public static void contactCreate2(){
    List<Account> noContactAccount2 = [select id, name,(select id from contacts) from Account ];
    list<contact> ListContact2 = new list<contact>();
    for (Account eachAccount2 : noContactAccount2) {
        if (eachAccount2.Contacts.isEmpty()) {
        contact newContact2 = new Contact2();
        newContact2.AccountId= eachAccount2.Id;
        newContact2.lastName = eachAccount2.name;
        ListContact2.add(newContact2);  
        }  
    }

    insert ListContact2;
}

public static void name(){

list<Opportunity> filterOpp= [select id, name, amount, stagename from opportunity where amount <20000 and StageName='Closed Lost'];
delete filterOpp;

}


}

    
