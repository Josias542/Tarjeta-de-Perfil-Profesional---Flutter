import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Primera App',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child:
              TarjetaPerfil()
          ),
    );
  }
}

class EjemploText extends StatelessWidget {
  const EjemploText({super.key});

  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Text sencillo',
        ),
        Text(
          'Texto con Estilo',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 1.2),
        ),
        Text(
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          child: const Center(
            child: Text('Container básico'),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3))
              ],
              border: Border.all(
                color: Colors.red,
                width: 2,
              )),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          child: const Center(
            child: Text(
                'Container decorado hola Container decorado Container decorado'),
          ),
        )
      ],
    );
  }
}

class EjemploLayouts extends StatelessWidget {
  const EjemploLayouts({super.key});

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ],
        ),

        Container(
          color: Colors.grey,
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Text('Service rate'),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star),
                  const SizedBox(width: 8),
                  const Text('4.9'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class TarjetaPerfil extends StatelessWidget {
  const TarjetaPerfil({super.key});

  Widget _buildEstadistica(String titulo, String valor, IconData icono) {
    return Column(
      children: [
        Icon(icono, size: 30, color: Colors.blue),
        const SizedBox(height: 4),
        Text(
          valor,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          titulo,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Encabezado con título y switch
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Perfil Profesional',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Switch(
                value: false,
                activeColor: Colors.blue,
                onChanged: (value) {},
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Contenido del perfil
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 3,
                )
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Foto de perfil
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[100],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Información principal
                Column(
                  children: [
                    const Text(
                      'Josias Alcalá Gomez',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Analista de Sistemas',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.favorite, color: Colors.red, size: 20),
                        const SizedBox(width: 4),
                        Text(
                          '18',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  alignment: WrapAlignment.center,
                  children: [
                    _buildHabilidad('HTML/CSS/JS'),
                    _buildHabilidad('.NET C#'),
                    _buildHabilidad('SQL'),
                    _buildHabilidad('Git'),
                    _buildHabilidad('UI/UX'),
                  ],
                ),
                const SizedBox(height: 20),

                // Redes sociales
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialIcon(Icons.facebook),
                    const SizedBox(width: 12),
                    _buildSocialIcon(Icons.link),
                    const SizedBox(width: 12),
                    _buildSocialIcon(Icons.camera),
                    const SizedBox(width: 12),
                    _buildSocialIcon(Icons.code),
                  ],
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildBoton(Icons.mail, 'Contactar'),
                    const SizedBox(width: 8),
                    _buildBoton(Icons.download, 'CV'),
                  ],
                ),
                const SizedBox(height: 20),

                // Estadísticas finales
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildEstadistica('Proyectos', '3', Icons.folder_open),
                    _buildEstadistica('Seguidores', '1K', Icons.people),
                    _buildEstadistica('Rating', '4.5', Icons.star),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

  Widget _buildHabilidad(String texto) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blue[100]!),
      ),
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icono) {
    return Icon(icono, size: 30, color: Colors.blue[600]);
  }

  Widget _buildBoton(IconData icono, String texto) {
    return ElevatedButton.icon(
      icon: Icon(icono, size: 18, color: Colors.white),
      label: Text(texto),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      onPressed: () {},
    );
  }
