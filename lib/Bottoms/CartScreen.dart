import 'package:flutter/material.dart';
import 'package:fruits_app/Bottoms/CartItems.dart';

void main() {
  runApp(FruitCartApp());
}

class FruitCartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FruitCartScreen(),
    );
  }
}
class FruitCartScreen extends StatefulWidget {
  @override
  _FruitCartScreenState createState() => _FruitCartScreenState();
}
class _FruitCartScreenState extends State<FruitCartScreen> {
  Map<String, int> cartItems = {};
  get favoriteItems => null;
  void addItemToCart(String fruitName) {
    setState(() {
      cartItems.update(fruitName, (value) => value + 1, ifAbsent: () => 1);
    });
  }
  void removeItemFromCart(String fruitName) {
    setState(() {
      if (cartItems.containsKey(fruitName) && cartItems[fruitName]! > 0) {
        cartItems.update(fruitName, (value) => value - 1);
        if (cartItems[fruitName] == 0) {
          cartItems.remove(fruitName);
        }
      }
    });
  }
   void toggleFavoriteItem(String itemName) {
    if (favoriteItems.contains(itemName)) {
      favoriteItems.remove(itemName); // Remove from favorites if already present
    } else {
      favoriteItems.add(itemName); // Add to favorites if not present
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Fruit Cart App',
      // color: Color(0xff30cbe5),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fruit Cart'),
          backgroundColor: Color(0xff30cbe5),
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Banana', 'asset/bana.png', 24)),
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Apple', 'asset/apple.png', 25)),
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Mango', 'asset/mngo.png', 22)),
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Orango', 'asset/orn.png', 20)),
             ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Cherry', 'asset/cherr.png', 20)),
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Avocado', 'asset/av.png', 20)),
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Peach', 'asset/peach.png', 20)),
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Lemon', 'asset/lem.png', 20)),
            ElevatedButton(onPressed: () {  },
            style: ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: Colors.white
            ),
            child: _buildFruitItem('Papaya', 'asset/pap.png', 20)),
            
           
            // _buildFruitItem("Apple", "asset/bana.png", 26)
            // Add more fruit items here...
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff30cbe5),
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => CartScreen(cartItems),
      ),
            );
          },
          child: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }

  Widget _buildFruitItem(String name, String imagePath, double price) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
        backgroundColor: Colors.white,
      ),
      title: Text(name,style: TextStyle(fontSize: 20),),
      subtitle: Text('\$$price', style: TextStyle(fontSize: 15),),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.remove, size: 30,),
            onPressed: () {
              removeItemFromCart(name);
            },
          ),
          Text(
            cartItems[name]?.toString() ?? '0',
            style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(Icons.add, size: 27,),
            onPressed: () {
              addItemToCart(name);
            },
          ),
        ],
      ),
    );
    
  }
}
