class AppData {
  AppData._();
  static const List<Map<String, dynamic>> productData = [
    {
      "id": 0,
      "hint": "Product name ...",
      "helperText": "The product name should be unique",
      "maxLines": 10,
      "duration": 50,
    },
    {
      "id": 1,
      "hint": "Product code bare ...",
      "helperText": "you can get the code bar by scanning the product",
      "duration": 150,
    },
    {
      "id": 2,
      "hint": "What The company owner ...",
      "helperText": "You can choose from we have",
      "duration": 300,
    },
    {
      "id": 3,
      "hint": "What is the price ...",
      "helperText": "You can tell the exact price",
      "duration": 450,
    },
    {
      "id": 4,
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
  static const List<Map<String, dynamic>> dummyProductList = [
    {
      "price": 2.55,
      "productName": "Oat Milk",
      "brandName": "Nestlee",
      "isDown": true,
      "quantity": "1L"
    },
    {
      "price": 1.00,
      "productName": "Tomatoas",
      "isDown": true,
      "quantity": "1.9kg"
    },
    {"price": 4.01, "productName": "Onion", "isDown": false, "quantity": "2kg"},
    {
      "price": 2.55,
      "productName": "Potatos",
      "isDown": true,
      "quantity": "0.5kg"
    },
    {
      "price": 1.00,
      "productName": "Tea",
      "brandName": "Ain Atlais",
      "isDown": true,
      "quantity": "1 small bottle"
    }
  ];
}
