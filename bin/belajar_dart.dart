void main(List<String> arguments) async {
  /*
  * Asynchronous in dart
  * using Future
  * has three condition: uncompleted, completed with data, completed with error
  * */
  final myFuture = Future(() {
    // this future has executed after all of function in main executed
    print('Creating future');
    return 12;
  });
  print('main() done');

  // try future with completed data
  getOrder().then((value) {
    print('Ordered: $value');
  }).catchError((err) {
    // catch the error
    print('Sorry $err');
  }).whenComplete(() {
    // will execute when error or not
    print('Thanks for order');
  });
  print('Getting your order...');

  // Future with async await, must adding async in main and await in getOrder()
  print('Getting new order...');
  var order = await getNewOrder(); // if not adding await will be uncompleted
  print('New Ordered: $order');

  // async await with error handling
  try {
    print('Creating new order again');
    var order = await getOrder(); // uncompleted state
    print('Your new order: $order'); // completed with data state
  } catch (err) {
    print('Sorry: $err'); // completed with error state
  } finally {
    print('Thanks for order'); // when complete
  }
}

// create future
Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee';
    } else {
      throw 'Stock is empty';
    }
  });
}

Future<String> getNewOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee';
  });
}
