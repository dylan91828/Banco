import 'package:flutter/material.dart';

void main() {
  runApp(const BancoDylan());
}

class BancoDylan extends StatelessWidget {
  const BancoDylan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banco de Dylan Oficial',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF8E24AA),
      ),
      home: const Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F1FA),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 42,
                  backgroundColor: Color(0xFF8E24AA),
                  child: Text(
                    'D',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Banco de Dylan Oficial',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text('DEMO · DINERO FICTICIO'),
                const SizedBox(height: 28),
                const Text(
                  '•••••• 85',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Menu(),
                        ),
                      );
                    },
                    child: const Text('ENTRAR'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    final opciones = [
      'Enviar',
      'Recibir',
      'Pagar',
      'Recargar',
      'Tarjetas',
      'Bolsillos',
      'Estadísticas',
      'Movimientos',
      'Perfil',
      'Avisos',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Banco de Dylan Oficial'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Cuenta de papá',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Card(
            color: const Color(0xFF8E24AA),
            child: const Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Saldo ficticio', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 8),
                  Text(
                    '\$289.000.000 COP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text('DEMO · Todas las operaciones son simuladas'),
          const SizedBox(height: 12),
          ...opciones.map(
            (opcion) => Card(
              child: ListTile(
                title: Text(opcion),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text(opcion),
                      content: const Text(
                        'Esta es una demostración. No se mueve dinero real.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cerrar'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text('Hecho por Dylan Mendez, tu hijo :)'),
          ),
        ],
      ),
    );
  }
}
