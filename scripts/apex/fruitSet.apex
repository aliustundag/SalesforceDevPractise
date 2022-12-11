set<string> fruitsSet = new set <string>();
fruitsSet.add('melon');
fruitsSet.add('banana');
fruitsSet.add('apple');
fruitsSet.add('orange');

for(String printFruits : fruitsSet){
    system.debug(printFruits);
}

system.debug(fruitsSet.size());

fruitsSet.add('appricot');
system.debug(fruitsSet);


system.debug(fruitsSet.contains('appricot'));
system.debug(fruitsSet.isEmpty());

