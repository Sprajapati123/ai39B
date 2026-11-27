class UserModel {
  String id;
  String firstName;
  String lastName;
  String email;
  String? contact;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.contact,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'firstName': this.firstName,
      'lastName': this.lastName,
      'email': this.email,
      'contact': this.contact,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String,
      contact: map['contact'] as String,
    );
  }
}