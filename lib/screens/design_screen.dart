import 'package:flutter/material.dart';

class DesignScreen extends StatelessWidget {
  const DesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(children: [
        const FadeInImage(
          placeholder: AssetImage('../../assets/images/loading.gif'),
          image: NetworkImage('https://picsum.photos/id/237/1200'),
          height: 250,
          fit: BoxFit.fitWidth,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.all(20),
          color: Colors.amber,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('lorem ipsum lorem ipsum',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    'lorem ipsum lorem ipsum',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('41')
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.all(20),
          color: Colors.amber,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text('call',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text('call',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text('call',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.all(20),
          color: Colors.amber,
          child: const Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinea el texto a la izquierda
                  children: [
                    Text(
                      ' Una duración absolutamente inusual en los festivales, pero establecida por la propia banda como condición para formar de la grilla-, el histórico grupo británico sumergió a la multitud que colmó el predio en un ensoñador viaje sonoro, que se presentó en forma de narcótica angustia o, en el extremo opuesto, signado por la canción pop de esperanzadores tonos románticos; aunque, por supuesto, siempre bajo el ropaje de la oscuridad.',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
