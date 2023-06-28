import 'package:flutter/material.dart';
import 'package:jarbo/components/custom_job.dart';

class HomePage extends StatefulWidget {
  const HomePage({required Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> jobList = [
    'Fontanero',
    'Carpintero',
    'Electricista',
    'Grua',
    'Niñera',
    'Pintor',
    'Albañil',
    'Mecanico',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jarbo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.white),
                ],
              ),
              const SizedBox(height: 25),
              // Search bar
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[200]!,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),
              // Job list

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio:
                      3.0, // Ajusta el tamaño de los elementos en la cuadrícula
                  crossAxisSpacing: 10, // Espacio horizontal entre elementos
                  mainAxisSpacing: 10, // Espacio vertical entre elementos
                  children: List.generate(
                    jobList.length,
                    (index) => CustomJob(
                      text: jobList[index],
                      color: Colors.blue[200]!,
                      fontSize: 16, // Tamaño de fuente ligeramente más pequeño
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
