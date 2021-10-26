class UserModel {
  int id;
  String name;
  String email;
  String avatar;
  String token;
  String pStatus;
  DateTime createdAt;
  String userName;
  String method;
  double total;
  String address;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.avatar,
    this.token,
    this.pStatus,
    this.createdAt,
    this.userName,
    this.method,
    this.total,
    this.address,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    token = json['token'];
    pStatus = json['pstatus'];
    createdAt = DateTime.parse(json['created_at']);
    userName = json['userName'];
    method = json['method'];
    total = json['total'];
    address = json['address'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'avatar': avatar,
      'token': token,
      'pstatus': pStatus,
      'created_at': createdAt.toString(),
      'userName': userName,
      'method': method,
      'total': total,
      'address': address,
    };
  }
}
