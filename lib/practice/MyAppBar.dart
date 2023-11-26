import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null
          ),
          Expanded(child: title),
          const IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget{
   const MyScaffold({super.key});

   @override
   Widget build(BuildContext context) {
     return Material(
       child: Column(
         children: [
           MyAppBar(
               title: Text(
                   '老板通',
                    style: Theme.of(context)
                    .primaryTextTheme
                    .titleLarge
               ),
            ),
           const Expanded(
               child: Center(
                 child: Text('你好, 五芳斋!'),
               ),
           ),
         ],
       ),
     );
  }
}

void main(){
  runApp(
    const MaterialApp(
      title: 'My App',
      home: SafeArea(child: MyScaffold(),),
    ),
  );
}
