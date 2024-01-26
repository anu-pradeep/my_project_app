// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Food Ordering App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Food Ordering App'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Welcome to our Food App!',
//             style: TextStyle(fontSize: 20),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => RestaurantList()),
//               );
//             },
//             child: Text('Explore Restaurants'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class RestaurantList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Restaurants'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Restaurant A'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MenuPage()),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Restaurant A'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MenuPage()),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Restaurant A'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MenuPage()),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Restaurant A'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MenuPage()),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Restaurant B'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MenuPage()),
//               );
//             },
//           ),
//           // Add more restaurants as needed
//         ],
//       ),
//     );
//   }
// }
//
// class MenuPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Item 1'),
//             subtitle: Text('Description of Item 1'),
//             trailing: Text('\$10'),
//             onTap: () {
//               // Add item to cart logic
//             },
//           ),
//           ListTile(
//             title: Text('Item 2'),
//             subtitle: Text('Description of Item 2'),
//             trailing: Text('\$15'),
//             onTap: () {
//               // Add item to cart logic
//             },
//           ),
//           // Add more menu items as needed
//         ],
//       ),
//     );
//   }
// }
//ui
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to our Food App!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestaurantList()),
                  );
                },
                child: Text('Explore Restaurants'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                title: Text('Restaurant A'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Restaurant B'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
              ),
              // Add more restaurants as needed
            ],
          ),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                title: Text('Item 1'),
                subtitle: Text('Description of Item 1'),
                trailing: Text('\$10'),
                onTap: () {
                  // Add item to cart logic
                },
              ),
              ListTile(
                title: Text('Item 2'),
                subtitle: Text('Description of Item 2'),
                trailing: Text('\$15'),
                onTap: () {
                  // Add item to cart logic
                },
              ),
              // Add more menu items as needed
            ],
          ),
        ),
      ),
    );
  }
}
