import 'dart:convert';

class Item {
  int quantity;
  int stock;

  Item({required this.quantity, required this.stock});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(quantity: json['quantity'], stock: json['stock']);
  }

  Map<String, dynamic> toJson() => {'quantity': quantity};
}

// User class
class User {
  String name;
  int age;
  String email;
  List<Item> items;

  User({
    required this.name,
    required this.age,
    required this.email,
    required this.items,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
      email: json['email'],
      items: (json['items'] as List)
          .map((itemJson) => Item.fromJson(itemJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
    'email': email,
    'items': items.map((item) => item.toJson()).toList(),
  };
}

void main() {
  String jsonStr = '''
  {
    "name": "Alice",
    "age": 30,
    "email": "alice@example.com",
    "items": [
      { "quantity": 10,
         "stock": 10
      },
      { "quantity": 20,
        "stock": 20
      },
      { "quantity": 30,
         "stock": 30
      },
      { "quantity": 40,
        "stock": 40
      }
    ]
  }
  ''';

  // Decode JSON to Dart Map
  Map<String, dynamic> userMap = jsonDecode(jsonStr);

  // Convert Map to User object
  User user = User.fromJson(userMap);

  print("Name: ${user.name}");
  print("Age: ${user.age}");
  print("Email: ${user.email}");
  print("Items:");
  for (var item in user.items) {
    print("(${item.quantity}, ${item.stock})");
  }

  String backToJson = jsonEncode(user.toJson());
  print("\nBack to JSON: $backToJson");
}
