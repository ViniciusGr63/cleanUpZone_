import 'dart:js';

import 'importar.dart';

class Page4 extends StatefulWidget {
  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final User? user = Auth().currentUser;

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Perfil"),
      ),
      body: _Body(context),
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

  _Body(BuildContext context) {
    String _titulo;
    return Center(
      child: Column(
        children: [
          Container(
            width: 20,
            height: 40,
          ),
          Image.asset("assets/image/perfil.png"),
          _userUid(),
          Container(
            width: 20,
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detalhes()),
              );
            },
            child: _conteudo(_titulo = "Detalhes pessoais"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registro()),
              );
            },
            child: _conteudo(_titulo = "Registro de denúncia"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Ajuda()),
              );
            },
            child: _conteudo(_titulo = "Ajuda"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sair()),
              );
            },
            child: _conteudo(_titulo = "Sair"),
          ),
          //_signOutButton()
        ],
      ),
    );
  }

  _conteudo(String t) {
    String _titulo = t;
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
        ),
        Image.asset("assets/image/proximo.png"),
        Container(
          width: 30,
          height: 20,
        ),
        Text(
          _titulo,
          style: TextStyle(color: Color(0xff000000), fontSize: 20),
        ),
        Container(
          width: 20,
          height: 50,
        ),
      ],
    );
  }
}

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes Pessoais"),
      ),
      body: _Body(),
    );
  }

  _Body() {
    String _titulo;
    return Center(
      child: Column(
        children: [
          Container(
            width: 20,
            height: 40,
          ),
          Image.asset("assets/image/perfil.png"),
          Text(
            "Augusto Roberto",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            width: 20,
            height: 60,
          ),
          _conteudo(_titulo = "Auguto Pereira"),
          _conteudo(_titulo = "(81)98249-8303"),
          _conteudo(_titulo = "Recife, Brasil"),
          _conteudo(_titulo = "Homem"),
          _conteudo(_titulo = "senha: *******"),
          SizedBox(
            height: 30,
            width: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color(0xffffffff),
              onPrimary: Color(0xff444444),
            ),
            child: Text('Salvar'),
          ),
        ],
      ),
    );
  }

  _conteudo(String t) {
    String _titulo = t;
    return Column(
      children: [
        SizedBox(
          height: 20,
          width: 20,
        ),
        Row(
          children: [
            Container(
              width: 40,
              height: 20,
            ),
            Text(
              _titulo,
              style: TextStyle(color: Color(0xff000000), fontSize: 20),
            ),
            Container(
              width: 20,
              height: 20,
            ),
          ],
        ),
        SizedBox(
          height: 10,
          width: 20,
        ),
        Container(
          width: 345,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xff739d30), // Cor da linha
                width: 2.0, // Largura da linha
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro de denúncias"),
      ),
      body: _Body(context),
    );
  }

  _Body(BuildContext context) {
    String _titulo;
    return Center(
      child: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registroden()),
              );
            },
            child: _conteudo(_titulo = "Denúncia_1"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registroden()),
              );
            },
            child: _conteudo(_titulo = "Denúncia_2"),
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
              Image.asset("assets/image/foto.png.png"),
              Container(
                width: 20,
                height: 20,
              ),
              Text(
                "_titulo  00/00/0000",
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

class Registroden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro_"),
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

class Ajuda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajuda"),
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

class Sair extends StatefulWidget {
  const Sair({Key? key}) : super(key: key);

  @override
  State<Sair> createState() => _SairState();
}

class _SairState extends State<Sair> {
  Future<void> signOut(BuildContext context) async {
    await Auth().signOut();
    setState(() {});
    Navigator.pushReplacementNamed(context, '/tree');
  }

  Widget _title() {
    return const Text("Sair do Clean Up Zone");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Deseja sair do App?',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/page4');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffffffff),
                      onPrimary: Color(0xff444444),
                    ),
                    child: Text('Ficar')),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      signOut(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff27c500),
                      onPrimary: Color(0xff444444),
                    ),
                    child: Text('Sair')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
