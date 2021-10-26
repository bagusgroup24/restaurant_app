class OrderModel {
  int id;
  String userName;
  DateTime createdAt;
  String method;
  double total;
  String address;

  OrderModel({
    this.id,
    this.userName,
    this.createdAt,
    this.method,
    this.total,
    this.address,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    createdAt = DateTime.parse(json['created_at']);
    method = json['method'];
    total = json['total'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'userName': userName,
      'created_at': createdAt.toString(),
      'method': method,
      'total': total.toString(),
      'address': address,
    };
  }
}
