import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cards')),
        body: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
          padding: EdgeInsets.all(10.0),
          children: [
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2()
          ],
        ));
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue[700]),
              title: Text('Soy el titulo de esta tarjeta'),
              subtitle: Text(
                  'Aquí estamos con la descripción de la tarjeta para que se visualice lo que se requiere.')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
        // clipBehavior: Clip.antiAlias,
        child: Column(
      children: [
        FadeInImage(
            image: NetworkImage(
                'https://media.sproutsocial.com/uploads/landscape-hero-bg-1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover),
        // Image(
        //     image: NetworkImage(
        //         'https://media.sproutsocial.com/uploads/landscape-hero-bg-1.jpg')),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'))
      ],
    ));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
