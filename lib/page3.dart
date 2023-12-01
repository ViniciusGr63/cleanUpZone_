import 'importar.dart';

class Page3 extends StatefulWidget {
  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final _formKey = GlobalKey<FormState>();
  String _nome = 'amanda';
  String _email = 'amanda@gmail.com';
  String _descricao = "";
  String _local = "";
  bool _mostrarConfirmacao = false; // Novo estado

  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Denúncias"),
      ),
      body: _mostrarConfirmacao
          ? _confimacao()
          : _Body(), // Condição para exibir o formulário ou a confirmação
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nome'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira o seu nome.';
                }
                return null;
              },
              onSaved: (value) {
                _nome = value!;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(labelText: 'E-mail'),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty || !value.contains('@')) {
                  return 'Por favor, insira um e-mail válido.';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(labelText: 'Local'),
              onSaved: (value) {
                _local = value!;
              },
            ),
            SizedBox(height: 16),
            Container(
              height: 100,
              child: TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: 'Conte-nos o que aconteceu:',
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  _descricao = value!;
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Mostrar confirmação, chamar função
                  setState(() {
                    _mostrarConfirmacao = true;
                  });
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffffffff),
                onPrimary: Color(0xff000000),
                elevation: 4,
                shadowColor: Colors.black,
              ),
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }

  _confimacao() {
    return Center(
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Denúncia concluída, agradecemos a sua colaboração!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Fechar tela
                setState(() {
                  _mostrarConfirmacao = false;
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffbdff50),
                onPrimary: Color(0xff444444),
              ),
              child: Text('Ok'),
            ),
          ],
        ),
      ),
    );
  }
}
