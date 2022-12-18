import 'package:flutter/material.dart';
import 'package:test_app/components/custom_drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_active_outlined),
            ),
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Color.fromARGB(255, 119, 233, 123)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 20,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              "https://c4.wallpaperflare.com/wallpaper/127/164/7/kid-luffy-monkey-d-luffy-one-piece-anime-hd-wallpaper-preview.jpg"),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Monkey D. Luffy",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              "Strawhats Pirates",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white70),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 25,
                    child: Container(
                        width: MediaQuery.of(context).size.width - 50,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 156, 213, 241),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 10),
                              blurRadius: 10,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Bounty : ",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.grey)),
                                    TextSpan(
                                        text: "\$100,000",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black87)),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          "https://static0.cbrimages.com/wordpress/wp-content/uploads/2020/10/Luffy-Creativity.jpg?q=50&fit=crop&w=963&h=481&dpr=1.5"),
                                    ),
                                    Text("Gear 1")
                                  ],
                                ),
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZll8jxEUuYuDdE-88FzQJXnVswdgs8nKtsg&usqp=CAU"),
                                    ),
                                    Text("Gear 2")
                                  ],
                                ),
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          "https://static0.cbrimages.com/wordpress/wp-content/uploads/2019/12/Luffy-Gear-Third-Featured.jpg"),
                                    ),
                                    Text("Gear 3")
                                  ],
                                ),
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          "https://i.pinimg.com/originals/b1/5b/cc/b15bcc28cae21e3206fff65c9c83d815.jpg"),
                                    ),
                                    Text("Gear 4")
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Positioned(
                    top: 350,
                    left: 0,
                    right: 0,
                    //bottom: 0,
                    child: Column(
                      children: [
                        ListTile(
                          //contentPadding: EdgeInsets.all(8),
                          title: const Text(
                            "Explore Strawhats",
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: const Text("View all member"),
                          trailing: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                    colors: [Colors.blue, Colors.greenAccent])),
                            child: const Text(
                              "View all",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 175,
                          child: const Expanded(
                            child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.we use itIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
