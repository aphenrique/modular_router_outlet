import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const RouterOutlet(),
      bottomSheet: Container(
        color: Colors.red,
        height: 250,
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/');
              },
              child: const Text('root'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/paginas/pagina2');
              },
              child: const Text('pagina2'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/paginas/pagina3');
              },
              child: const Text('pagina3'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaginaDois extends StatefulWidget {
  const PaginaDois({super.key});

  @override
  State<PaginaDois> createState() => _PaginaDoisState();
}

class _PaginaDoisState extends State<PaginaDois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.teal),
    );
  }
}

class PaginaTres extends StatefulWidget {
  const PaginaTres({super.key});

  @override
  State<PaginaTres> createState() => _PaginaTresState();
}

class _PaginaTresState extends State<PaginaTres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.orange),
    );
  }
}
