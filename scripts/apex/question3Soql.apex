List<Opportunity> ClosedWonAmount = [Select id, name, amount from opportunity where 
stagename ='Closed Won' and amount <= 35000];
system.debug(ClosedWonAmount);

List<contact> allContacts = [select id, name, account.name from contact order by lastname DESC];
system.debug(allContacts);

List<Account> allAccountsClosedLost = [select id, name,(select id, name from opportunities where stagename !='Closed Lost') from account];

system.debug(allAccountsClosedLost);

List<opportunity> topTen=[select id, name from opportunity order by amount desc limit 10 ];
System.debug(topTen);

List<opportunity> low20=[select id, name from opportunity where stageName !='Closed Won'  and stageName !='Closed Lost' order by amount  limit 20  ];
System.debug(low20);
