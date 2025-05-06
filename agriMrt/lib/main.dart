import 'package:flutter/material.dart';

void main() {
  runApp(AgriMartApp());
}

class AgriMartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgriMart',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'name': 'Tomato',
      'price': '25৳/kg',
      'location': 'Jhalokathi',
      'image': 'images/tomato.jpg',
    },
    {
      'name': 'Potato',
      'price': '18৳/kg',
      'location': 'Barisal',
      'image': 'images/potato.jpg',
    },
    {
      'name': 'Rice',
      'price': '50৳/kg',
      'location': 'Patuakhali',
      'image': 'images/rice.jpg',
    },
    {
      'name': 'Cucumber',
      'price': '50৳/kg',
      'location': 'Patuakhali',
      'image': 'images/Cucumber.jpg',
    },
    {
      'name': 'Corn',
      'price': '31৳/kg',
      'location': 'Patuakhali',
      'image': 'images/Corn.jpg',
    },
    {
      'name': 'Gralic',
      'price': '50৳/kg',
      'location': 'Netrkona',
      'image': 'images/Gralic.jpg',
    },
    {
      'name': 'Wheat',
      'price': '40৳/kg',
      'location': 'Patuakhali',
      'image': 'images/wheat.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgriMart'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.green),
                SizedBox(width: 5),
                Text("Mymensingh", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),

          // Featured Products Label
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              '🧺 Featured Products',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 10),

          // Product List
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      product['image']!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(product['name']!),
                    subtitle:
                        Text("${product['price']} • ${product['location']}"),
                    trailing: Icon(Icons.shopping_cart, color: Colors.green),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
