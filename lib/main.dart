import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldScreen(),
    );
  }
}

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Api electiva 3 '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ingrese su nombre por favor'),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ingrese su texto aquí',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerScreen()),
                );
              },
              child: Text('Ir a Galería'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowScreen()),
                );
              },
              child: Text('Ir a RowScreen and List view'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColumnScreen()),
                );
              },
              child: Text('Ir a Columnas y Tarjetas'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconScreen()),
                );
              },
              child: Text('Ir a IconScreen'),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Center'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black87,
              width: 80,
              height: 80,
              alignment: Alignment.center,
              child: const Text(
                'Contenedor',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(),
            Image.network(
              'https://via.placeholder.com/150',
              width: 150,
              height: 300,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const styleTextAppBar =
        TextStyle(fontWeight: FontWeight.bold, color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Row', style: styleTextAppBar),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              width: 50,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 50,
              height: 100,
            ),
            const SizedBox(height: 16), // Añadido un SizedBox para separación
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón en el SizedBox
                },
                child: Text('Botón en SizedBox'),
              ),
            ),
            const SizedBox(height: 16), // Añadido un SizedBox para separación
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Elemento 1'),
                  ),
                  ListTile(
                    title: Text('Elemento 2'),
                  ),
                  ListTile(
                    title: Text('Elemento 3'),
                  ),
                  // Añade más elementos según sea necesario
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const styleTextAppbar =
        TextStyle(fontWeight: FontWeight.bold, color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Columna', style: styleTextAppbar),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Este es un contenido en una tarjeta y muestra los colores de la bandera de colombia',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconScreen extends StatelessWidget {
  const IconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Acción al presionar el botón de retroceso
        Navigator.pop(context);
        return false; // Evita que la página se cierre automáticamente
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Icon',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flight,
                size: 104,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 16), // Espacio entre los íconos
              Icon(
                Icons.favorite,
                size: 104,
                color: Colors.red,
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Opción 1'),
                onTap: () {
                  // Acción al seleccionar la opción 1 en el Drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Opción 2'),
                onTap: () {
                  // Acción al seleccionar la opción 2 en el Drawer
                  Navigator.pop(context);
                },
              ),
              // Añade más opciones según sea necesario
            ],
          ),
        ),
      ),
    );
  }
}
