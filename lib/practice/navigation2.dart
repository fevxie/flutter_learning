
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigatePage(),
    );
  }
}

class NavigatePage extends StatefulWidget {
  const NavigatePage({super.key});

  @override
  State createState() {
    return NavigatePageState();
  }
}

class NavigatePageState extends State<NavigatePage> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Explore'
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute'
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved'
          ),
        ],
    ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Label behavior: ${labelBehavior.name}'),
          const SizedBox(height: 20),
          OverflowBar(
            spacing: 10.0,
            children: <Widget>[
              ElevatedButton(
                onPressed:(){
                  setState(() {
                    labelBehavior = NavigationDestinationLabelBehavior.alwaysShow;
                  });
                },
                child: const Text('Always show'),
              ),
              ElevatedButton(
                onPressed:(){
                  setState(() {
                    labelBehavior = NavigationDestinationLabelBehavior.onlyShowSelected;
                  });
                },
                child: const Text('Only show selected'),
              ),
              ElevatedButton(
                onPressed:(){
                  setState(() {
                    labelBehavior = NavigationDestinationLabelBehavior.alwaysHide;
                  });
                },
                child: const Text("Always hide"),
              )
            ],
          ),
        ],
      ),
      ),
    );
}
}
