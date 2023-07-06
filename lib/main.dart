import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plan App',
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_login.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(children: [Text("Coffee"), Text("shop")]),
              ),
              Container(
                height: 334,
                // color: Colors.red,
                alignment: Alignment.center,
                child: Form(
                  child: Column(children: [
                    Text(
                      "Iniciar sesión",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC1A98E),
                        fontFamily: 'Product Sans',
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    InputIconForm(
                      width: 300,
                      height: 38,
                      icon: Icon(Icons.email,
                          color: Colors.black.withOpacity(0.5)),
                      placeholder: "Correo electrónico",
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    InputIconForm(
                      width: 300,
                      height: 38,
                      icon: Icon(Icons.lock,
                          color: Colors.black.withOpacity(0.5)),
                      placeholder: "Contraseña",
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, top: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "¿Olvidaste tu contraseña?",
                            style: TextStyle(
                                color: Color(
                                  0xffC1A98E,
                                ),
                                fontSize: 14),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              " Recuperala",
                              style: TextStyle(
                                  color: Color(0xffC1A98E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      width: 300,
                      height: 38,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff916B47),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0))),
                        child: Text(
                          "Iniciar Sesión",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ]),
      ),
    );
  }
}

class InputIconForm extends StatelessWidget {
  final String placeholder;
  final Icon icon;
  final double width;
  final double height;
  const InputIconForm(
      {super.key,
      required this.placeholder,
      required this.icon,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        decoration: InputDecoration(
          alignLabelWithHint: true,
          prefixIcon: icon,
          prefixStyle: const TextStyle(color: Color(0xff000000)),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 10.0), // Tamaño personalizado
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50.0)),
          filled: true,
          fillColor: const Color(0xffC1A98E),
          hintText: placeholder,
        ),
      ),
    );
  }
}
