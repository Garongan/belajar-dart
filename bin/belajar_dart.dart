import 'dart:io';

void main(List<String> arguments) {
  // Collections : List, Set, Map
  // List
  // explicits declarations
  List<int> numberList = [1, 2, 3, 4, 5];
  // implicits declarations
  var stringList = ["one", "two", "three"];
  // dynamic list
  List mixTypeList = [1, "two", 3];
  print(mixTypeList.runtimeType);
  print(mixTypeList[1]); // access value in list by index
  // print(mixTypeList[3]); // this line will get error index out of bound
  // access all value in list with for loop
  for (int i = 0; i < mixTypeList.length; i++){
    print(mixTypeList[i]);
  }
  // access all value in list with foreach loop type 1
  mixTypeList.forEach((value) => print(value)); // using lambda expression
  // access all value in list with foreach loop type 2
  for (var value in mixTypeList){
    print(value);
  }
  // adding value to list
  stringList.add("four");
  print(stringList);
  // insert value with specific index in list
  mixTypeList.insert(0, 'zero');
  print(mixTypeList);
  // change the value of list by index
  mixTypeList[1] = 'one';
  print(mixTypeList);
  // remove value in list
  numberList.remove(1); // remove by value
  numberList.removeAt(2); // remove by index
  numberList.removeLast(); // remove last index in list
  numberList.removeRange(0, 2);
  print(numberList);

  // spread operator in list
  var newMixListType = [stringList, mixTypeList];
  print(newMixListType);
  var newMixTypeListWithSpreadOperator = [...stringList, ...mixTypeList]; // spread operator is performing copy all value in list
  print(newMixTypeListWithSpreadOperator);

  // add list with spread operator and null aware
  List<dynamic>? nullList;
  List<dynamic>? list2 = [0, ...?nullList];
  print(list2);

  // collection set is collection that receive unique value or not duplicated value
  Set<int> numberSet = new Set.from([1, 2, 3, 4, 5]); // the old way
  Set<int> newNumberSet = {1, 2, 3, 4, 5}; // using set literal
  print(numberSet);
  print(newNumberSet);
  // adding data to set collection
  numberSet.add(6); // and one data to set collection
  newNumberSet.addAll({6, 7, 8}); // add all new set collection
  print(numberSet);
  print(newNumberSet);
  // remove data in set by value
  newNumberSet.remove(1);
  // get data in set collection by value
  print(numberSet.elementAt(3));
  var union = numberSet.union(newNumberSet);
  print('union $union');
  var intersection = numberSet.intersection(newNumberSet);
  print('intersection $intersection');

  // Map collection is collection that type with key and value
  var capital = {
    "Jakarta": "Indonesia",
    "London": "England",
    "Canberra": "Australia"
  };
  
  print(capital['London']);

  var mapKeys = capital.keys;
  print(mapKeys);

  var mapValues = capital.values;
  print(mapValues);

  // adding new data to map
  capital['New Delhi'] = 'India';
  print(capital);
}
