import 'package:my_first_app_cifo/module/classes/ejercicio_reqres/error_control.dart';

class Persona {
  final int id;
  final String email;
  final String? firstName;
  final String? lastName;
  final String? avatar;
  final ErrorControl? errorControl;

  Persona({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.avatar,
    this.errorControl,
  });

  factory Persona.fromJson(Map<String, dynamic> json) {
    return Persona(
      id: json['id'] ?? 0,
      email: json['email'] ?? '',
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
      avatar: json['avatar'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'avatar': avatar,
    };
  }

  factory Persona.fromMap(Map<String, dynamic> json) => Persona(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
  @override
  String toString() {
    return 'Persona(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatar: $avatar)';
  }
}
