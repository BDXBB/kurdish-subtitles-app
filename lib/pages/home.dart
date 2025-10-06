import 'package:Kurdish_Sbtitles/pages/settings.dart';
import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Column(
        children: [
               AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(widget.title),
          title: Container(
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 5)
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search in google",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.all(15)

              ),
            ),
          ),
         actions: [
    PopupMenuButton<int>(
      icon: const Icon(Icons.settings),
      onSelected: (value) {
        if (value == 1) {
          // Navigate to settings page
        }
        // settingspage();
      },
      itemBuilder: (context) => [
        const PopupMenuItem(value: 1,
        child: SizedBox(
          width: 100,
          child: Text("Settings"),
          ),

               )
  ],
      ),
          ],
        ),

  const SizedBox(height: 24.0),

  const Text(
    'Supported Platforms',
    style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  
  const SizedBox(height: 16.0),

  Expanded(
    child: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
              Icons.play_arrow,
              size: 100,
              color: Color.fromARGB(255, 161, 20, 20),
              ),
          SizedBox(height: 10),
          Text(
            "YouTube",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
            ]
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 168, 72, 24),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Icon(
            Icons.school,
            size: 100,
            color: Color.fromARGB(255, 218, 3, 3),
          ),
      SizedBox(height: 10),
      Text(
        "Frontend Masters",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
            ]

        )
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.green,
          ),
                    child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Icon(
            Icons.school,
            size: 100,
            color: Color.fromARGB(255, 70, 2, 148),
          ),
      SizedBox(height: 10),
      Text(
        "Udemy",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
            ]

        )
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.orange,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle,
                size: 100,
                color: Color.fromARGB(255, 92, 2, 148),
              ),
              SizedBox(height: 10),
              Text(
                "More ?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
      ),
  )

        ],
      )
    );
  }
}