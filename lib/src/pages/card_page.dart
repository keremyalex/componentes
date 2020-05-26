import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
      ),  
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con las descripcion de la tarjeta que queremos mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: (){}, 
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: (){}, 
                child: Text('Ok')
              ),
            ],
          ),
        ],
      ),
    );


  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          
          FadeInImage(
            image: NetworkImage('https://cdn.photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage('https://cdn.photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg')
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner')
          ),
        ],
      ),
    );
  }

}