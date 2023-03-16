import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myapp/providers/news_provider.dart';
import 'package:provider/provider.dart';

class Footter extends StatefulWidget {
  const Footter({super.key});

  @override
  State<Footter> createState() => _FootterState();
}

class _FootterState extends State<Footter> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<NewsProvider>(context);
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: prov.selectedIndex,
        onTap: (vall){
          prov.setselectedIndex = vall;
        });
  }
} 
