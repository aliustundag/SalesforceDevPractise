public class OperationsHelper {

   public static decimal sumMethod(list<decimal> mylist){
    decimal sum;
    if (mylist.isEmpty()) {
        system.debug('Please provide values to do the operation');
        
    } else {
        sum = 0;
        for (decimal eachValue  : mylist) {
            sum += eachValue;
            }    
    }
    return sum;
}

   public static decimal averageMethod(list<decimal> mylist2){
    decimal avarage;
    if (!mylist2.isEmpty()) {
        avarage=0;
        avarage= sumMethod(mylist2)/mylist2.size();
        
    } else {
       system.debug('Please provide values to do the operation');
        
            } 
            return avarage;
} 


    public static decimal highMethod(list<decimal> mylist3){
        decimal highest;
        if (!mylist3.isEmpty()) {
            highest = mylist3[0];
        for (decimal eachValue1  : mylist3){
            if (eachvalue1 > highest) {
                highest = eachvalue1;   
            } 
            system.debug('list element = '+eachvalue1 + 'highest value = '+highest);
        }
        }
            else {
            system.debug('Please provide values to do the operation');
            
        }
        return highest;
}

public static decimal highMethod2(list<decimal> myList4) {
    decimal highest2;
    if (myList4.isEmpty()){
        system.debug ('Please provide values to do the operation');
    } else {
        myList4.sort();
        highest2 = myList4.get(mylist4.size()-1);
    }
    return highest2;
}

public static decimal lowestMethod(list<decimal> myList5){
    decimal lowest;
    if (!mylist5.isEmpty()) {
        lowest = mylist5[0];
        for (decimal eachvalue5 : myList5) {
            if (eachvalue5 <lowest) {
                lowest=eachvalue5;     
            }
            system.debug('list element '+ eachvalue5  +' lowest value : '+ lowest);
            
        }
    }
        else{
            system.debug('Please provide values to do the operation');

        }
        return lowest;
    }


}

























}
    



