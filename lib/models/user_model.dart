class UserModel {
  final int ID;
  String name;
  String email;
  List roles;

  UserModel(
      {required this.ID,
      required this.name,
      required this.email,
      required this.roles});
  factory UserModel.fromJson(Map parseJson) {
    return UserModel(
        ID: parseJson['id'],
        name: parseJson['name'],
        email: parseJson['email'],
        roles: parseJson['roles']);
  }

  get address => null;
  Map<String, dynamic> toJson() => {
        'id': ID,
        'name': name,
        'email': email,
        'roles': roles,
      };
}
