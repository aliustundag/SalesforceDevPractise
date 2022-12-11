map<string, decimal> myExampleMap = new map<string, decimal>();
myExampleMap.put('AUD', 0.73);
myExampleMap.put('CAD', 0.78);
myExampleMap.put('EUR', 1.13);
myExampleMap.put('NZD', 0.68);
myExampleMap.put('INR', 0.013);
system.debug(myExampleMap);
system.debug(myExampleMap.get('AUD'));
system.debug(myExampleMap.containsKey('SAD'));

set<string> setISO = new set<string>();
set<string> lessOneISO = new set<string>();
for (string eachISO : myExampleMap.keySet()) {
    if (myExampleMap.get(eachISO) >= 1) {
        
        setISO.add(eachISO);
        
    }else {
        
        lessOneISO.add(eachISO);     
    }
    
}
system.debug(setISO);
system.debug(lessOneISO);





