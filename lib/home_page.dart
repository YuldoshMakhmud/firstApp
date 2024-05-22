import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("APP BAR"),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          myCard(),
          myCard(),
          myCard(),
        ],
      ),
    );
  }

  Widget myCard(){
    return Card(
      margin: EdgeInsets.all(18),
      elevation: 24,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              color: Colors.orange,
              margin: EdgeInsets.all(10),
              child: Image.network(
                  'https://media.post.rvohealth.io/wp-content/uploads/2021/09/sushi-sashimi-732x549-thumbnail-732x549.jpg')),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Sushi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
