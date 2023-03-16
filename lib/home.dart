import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myapp/footer/footer.dart';
import 'package:myapp/profile/profile.dart';
import 'package:myapp/providers/news_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const _pages = [
      Icon(
        Icons.call,
        size: 150,
      ),
      Icon(
        Icons.camera,
        size: 150,
      ),
      Icon(
        Icons.chat,
        size: 150,
      ),
    ];
    final prov = Provider.of<NewsProvider>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30)
            )
          ),
          centerTitle: true,
          title: Text('Beritaku'),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()));
                    },
                    icon: Icon(
                      Icons.account_circle,
                      size: 40,
                    )))
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/pemuda.jpg"))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text('hai',style: TextStyle(
                    fontSize: 26
                  ),)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Berita Terkini', style: TextStyle(
                    color: Colors.white,
                    fontSize: 26
                  ),)
                ],
              )),
              ListTile(
                leading: Icon(Icons.newspaper),
                title: Text('Berita Terbaru', style: TextStyle(fontSize: 24),),
              )
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Image.asset('img/pemuda.jpg')
          Center(
            child: _pages.elementAt(prov.selectedIndex), //New
          ),
        ],
      ),
      bottomNavigationBar: Footter(),
    );
  }
}
