List<string> colorsList = new list<string>();
colorsList.add('yellow');
colorsList.add('black');
colorsList.add('white');
colorsList.add('red');
colorsList.add('blue');

system.debug(colorsList);
system.debug(colorsList.size());
system.debug(colorsList.contains('red'));

string lastElement = colorsList[colorsList.size()-1];
system.debug(lastElement.toUpperCase());

list<string>colorCodesList = new List<String>();
colorCodesList.add('#FFFF00');
colorCodesList.add('#0000FF');
colorCodesList.add('#FF0000');

Boolean comparelists = colorsList == colorCodesList;
// Boolean comparelists = colorsList.equals(colorCodesList) ;

system.debug(comparelists);

List<string> mergeColors = new list<string>();
mergeColors.addAll(colorsList);
mergeColors.addAll(colorCodesList);
system.debug(mergeColors);



