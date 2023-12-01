import 'importar.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eventos"),
      ),
      body: _Body(),
      bottomNavigationBar: NavigatorBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  _Body() {
    String _titulo;
    return Center(
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Evento()),
              );
            },
            child: _conteudo(_titulo = "Evento_1"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Evento()),
              );
            },
            child: _conteudo(_titulo = "Evento_2"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Evento()),
              );
            },
            child: _conteudo(_titulo = "Evento_3"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Evento()),
              );
            },
            child: _conteudo(_titulo = "Evento_4"),
          ),
        ],
      ),
    );
  }

  _conteudo(String t) {
    String _titulo = t;

    return Column(
      children: [
        Container(
          width: 20,
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          height: 40,
          color: Color(0xcfefefef),
          child: Text(
            _titulo,
            style: TextStyle(color: Color(0xff000000), fontSize: 20),
          ),
        ),
        Container(
          width: 5,
          height: 5,
        ),
        Container(
          width: double.infinity,
          height: 150,
          color: Color(0xcfefefef),
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
              ),
              Image.asset("assets/image/exemploEvento.png"),
              Container(
                width: 20,
                height: 20,
              ),
              Text(
                "conteudo",
                style: TextStyle(color: Color(0xff000000), fontSize: 20),
              ),
            ],
          ),
        ),
        Container(
          width: 20,
          height: 30,
        ),
      ],
    );
  }
}

class Evento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Evento_"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Color(0xcaefefef)),
        ),
      ),
    );
  }
}
