import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();
  bool senhaEscondida = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 23, 23, 23),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 2,
                      child: Image.network(
                        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/374e309d-713c-4ef2-b941-912bd95a5d52/debmdpw-dc71477e-702a-434c-b994-d05f4c58b675.png/v1/fill/w_1280,h_826,strp/__hanako_5__render__by_stardustinqs_debmdpw-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODI2IiwicGF0aCI6IlwvZlwvMzc0ZTMwOWQtNzEzYy00ZWYyLWI5NDEtOTEyYmQ5NWE1ZDUyXC9kZWJtZHB3LWRjNzE0NzdlLTcwMmEtNDM0Yy1iOTk0LWQwNWY0YzU4YjY3NS5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.erj3Yv6kwneHByLaoeGcZbuhOEvvy6TSDkl_T5BxTb8",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Seja Bem-Vindo(a)!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 89, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "Já tem cadastro? Faça o Login!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 89, 0), fontSize: 15),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: emailController,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 204, 0)),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(top: -8),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 89, 0))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 89, 0))),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 255, 89, 0)),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 255, 204, 0),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText: senhaEscondida,
                          controller: senhaController,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 204, 0)),
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(top: -7),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 89, 0))),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 89, 0))),
                              hintText: "Senha",
                              hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 255, 89, 0)),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 255, 204, 0),
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    senhaEscondida = !senhaEscondida;
                                  });
                                },
                                child: Icon(
                                  senhaEscondida
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: const Color.fromARGB(255, 255, 204, 0),
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        if (emailController.text.trim() == "poli@gmail.com" &&
                            senhaController.text == "1234") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Erro ao efetuar login.")),
                          );
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 255, 89, 0)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 204, 0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci minha senha.",
                    style: TextStyle(color: Color.fromARGB(255, 255, 89, 0)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Criar conta.",
                    style: TextStyle(color: Color.fromARGB(255, 255, 204, 0)),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
