class AddressBook {
  final String name;
  final String email;
  final String phone;

  // using builder pattern
  AddressBook._builder(AddressBookBuilder builder)
      : name = builder.name,
        email = builder.email,
        phone = builder.phone;
}

class AddressBookBuilder {
  late String name;
  late String email;
  late String phone;

  AddressBook build() {
    return AddressBook._builder(this);
  }
}
