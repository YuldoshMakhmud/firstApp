import 'package:flutter/material.dart';
import 'datails_page.dart';
import 'model/recipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List<Recipe> list =[
    Recipe("Kim Bab", "assets/images/kimpap.webp", "3000 Won", "rice, kim, fish"),
    Recipe("Pizza Sushi", 'assets/images/pizza.jpg', "10000 won", "rice, fish, kim, chease"),
    Recipe("Set Sushi", 'assets/images/set.jpg', '20000 won','fish, rice, egg, kim'),
    Recipe('Sushi', 'assets/images/sushi.avuf', '30000 won', 'fish ,rice, kim,'),

  ];



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
          myCard(list[0]),
          myCard(list[1]),
          myCard(list[2]),
          myCard(list[3]),
          myCard(list[3]),
        ],
      ),
    );
  }

  Widget myCard( Recipe recipe){
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsPage()
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(18),
        elevation: 24,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                color: Colors.orange,
                margin: EdgeInsets.all(10),
                child: Image.asset(recipe.imageUrl)),
             Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                recipe.title + '\n' + recipe.cost,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
           Text(recipe.ingredents),
          ],
        ),
      ),
    );
  }
}
