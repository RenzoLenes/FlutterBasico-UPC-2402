import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool showMessage = false;
  String userName = "";
  int age = 0;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    userInformation();
  }

  Future<void> userInformation() async {
    setState(() {
      isLoading = true;
    });
    userName = "Renzo Lenes";
    age = 23;

    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      isLoading = false;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _reduceCounter() {
    setState(() {
      _counter--;
    });
  }

  void _showMessage() {
    setState(() {
      showMessage = !showMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("SE RENDERIZO LA PANTALLA");
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Usuario:$userName"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: isLoading == true
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Usuario:$userName"),
                      Text("el usuario tiene: $age años")
                    ],
                  )),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: _reduceCounter,
            tooltip: 'Reduce',
            child: const Icon(Icons.remove),
          ),
        ]));
  }
}
