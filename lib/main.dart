import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingBag(),
    );
  }
}

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {

  final List<Map<String, dynamic>> items = [
    {'name': 'Pullover', 'color': 'Black', 'size': 'L', 'price': 51, 'quantity': 1},
    {'name': 'T-Shirt', 'color': 'Gray', 'size': 'L', 'price': 30, 'quantity': 1},
    {'name': 'Sport Dress', 'color': 'Black', 'size': 'M', 'price': 43, 'quantity': 1},
  ];


  int getTotalAmount() {
    int total = 0;
    for (var item in items) {

      total += ((item['price'] as num) * (item['quantity'] as num)).toInt();
    }
    return total;
  }



  void updateQuantity(int index, bool increment) {
    setState(() {
      if (increment) {
        items[index]['quantity']++;
      } else {
        if (items[index]['quantity'] > 0) {
          items[index]['quantity']--;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset('img.png'),
                  title: Text(items[index]['name']),
                  subtitle: Text('Color: ${items[index]['color']} | Size: ${items[index]['size']}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => updateQuantity(index, false),
                      ),
                      Text(items[index]['quantity'].toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => updateQuantity(index, true),
                      ),
                      SizedBox(width: 10),
                      Text('${items[index]['price']}\$'),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total amount: ${getTotalAmount()}\$',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Congratulations! You checked out successfully!')),
              );
            },
            child: Text('CHECK OUT'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
