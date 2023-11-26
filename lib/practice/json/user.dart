import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'user.g.dart';

void main(){
  Address address = Address("My st.", 'New York');
  User user = User("John", "J@J.com", address);
  print(user.toJson());
}

@JsonSerializable(explicitToJson: true)
class User{
  User(this.name,this.email, this.address);
  String name;
  String email;
  Address address;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
