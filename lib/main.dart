import 'importar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseOptions firebaseOptions = FirebaseOptions(
    apiKey: 'AIzaSyBpxHW6UGv74rnO6IlhEkkdqpsrpH6GoOA',
    //authDomain: 'your_auth_domain',
    projectId: 'projejoResidencia',
    //storageBucket: 'your_storage_bucket',
    messagingSenderId: 'projejoresidencia',
    appId: '750687130643',
  );
  await Firebase.initializeApp(
    options: firebaseOptions,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',

      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffbdff50),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Color(0xff000000),
          ),
          backgroundColor: Color(0xffffffff),
          titleTextStyle: TextStyle(
            color: Color(0xff000000),
            fontSize: 18,
          ),
        ),
      ),

      initialRoute: '/', // Rota inicial
      routes: {
        '/': (context) => HomePage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
        //'/testelogin': (context) => LoginPage(),
        //'/cadastrar': (context) => Cadastrar(email: "", password: ""),
        //'/login': (context) => Logar(email: "", password: ""),
        '/tree': (context) => WidgetTree(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 65,
          width: 20,
        ),
        Image.asset("assets/image/logoo.png"),
        SizedBox(height: 30),
        Center(
          child: Container(
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
            width: 300,
            height: 300,
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Text("Ola, _user !!"),
              SizedBox(
                width: 20,
                height: 20,
              ),
              Text(
                  textAlign: TextAlign.justify,
                  "Bem-vindo ao _nome_app!, sua plataforma dedicada a _objetivo. Aqui, cada ação conta na construção de um futuro mais sustentável. Explore nossos recursos intuitivos, registre suas contribuições e faça parte dessa mudança positiva!"),
              SizedBox(
                width: 20,
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tree');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffbdff50),
                    onPrimary: Color(0xff444444),
                  ),
                  child: Text('Continuar')),
            ]),
          ),
        ),
      ],
    ));
  }
}
