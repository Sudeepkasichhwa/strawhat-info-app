import 'package:flutter/material.dart';
import 'components/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: const Text("One Piece"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.network(
                "https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/11/One-Piece-Character-Guide.jpg?q=50&fit=contain&w=480&h=240&dpr=1.5",
                fit: BoxFit.fill,
              ),
            ),
            const ListTile(
              title: Text("ONE PIECE"),
            ),
            const ListTile(
              title: Text("gridview example"),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: const [
                Card(
                  child: Center(
                    child: Text("Luffy"),
                  ),
                ),
                Card(
                  child: Center(
                    child: Text("Luffy"),
                  ),
                ),
                Card(
                  child: Center(
                    child: Text("Luffy"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
