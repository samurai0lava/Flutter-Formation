import 'package:flutter/material.dart';

void main() {
  runApp(myfristapp());
}

class myfristapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Profile'),
        backgroundColor: Color(0xff000000),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://e1.pxfuel.com/desktop-wallpaper/303/608/desktop-wallpaper-woman-yelling-at-a-cat-meme-upscale-sad-cat-meme-thumbnail.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://static.printler.com/cache/8/e/1/a/0/c/8e1a0c16bf0c2cfa3bc131c209051cf5b64a2c46.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Ilyass Ouhsseine',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Heyy, im learning Flutter',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Add me'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
