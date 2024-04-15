import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Mostrar imagenes',
              style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Danna Vianey Mendez Avila 6I',
                  style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 250.0,
                width: 450.0,
                child: Image.asset(
                  'assets/porsche.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                  height: 250.0,
                  width: 450.0,
                  child: Image.network(
                    'https://www.cnet.com/a/img/resize/0fc5b93100c6e7b496c1abdceee3191888ba9173/hub/2022/07/01/2db8161e-5063-401d-8582-3d26786543a8/2022-porsche-911-carrera-gts-001.jpg?auto=webp&width=1200',
                    fit: BoxFit.fitWidth,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
