class AppConfig {
  AppConfig._();
  static const String appName = "Shopping Manage";
  static const List<Map<String, dynamic>> productData = [
    {
      "id": 0,
      "hint": "Product name ..",
      "helperText": "The product name should be unique",
      "maxLines": 10,
      "duration": 150,
    },
    {
      "id": 1,
      "hint": "What The company owner ...",
      "helperText": "You can choose from we have",
      "duration": 300,
    },
    {
      "id": 2,
      "hint": "What is the price ...",
      "helperText": "You can tell the exact price",
      "duration": 450,
    },
    {
      "id": 3,
      "hint": "How are you measuring the product ...",
      "helperText": "You can just choose from the presented metrics",
      "duration": 600,
    }
  ];
  static const List<Map<String, dynamic>> listData = [
    {
      "id": 0,
      "hint": "The list name will be..",
      "helperText": "The list name should be unique",
      "maxLines": 10,
      "duration": 150,
    },
    {
      "id": 1,
      "hint": "What are you shopping ...",
      "helperText": "You can choose more than one location",
      "duration": 300,
    },
    {
      "id": 2,
      "hint": "Your budget limit for this list will be ...",
      "helperText": "You can tell the exact price",
      "duration": 450,
    },
    {
      "id": 3,
      "hint": "You can add number you want",
      "helperText": "You can just choose from the presented metrics",
      "duration": 600,
    }
  ];
}
