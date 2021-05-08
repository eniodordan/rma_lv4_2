class User {
  final String id;
  final String name;
  final String email;
  final String avatar;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      email: json['email'] as String,
    );
  }
}
