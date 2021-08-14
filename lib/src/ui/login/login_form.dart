import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final emailOuCpfController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  void dispose() {
    emailOuCpfController.dispose();
    senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "E-mail ou CPF:"
            ),
            validator: (value) {
              //@TODO
              // validator para email ou cpf

              return null;
            },
            controller: emailOuCpfController,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Senha:"
            ),
            validator: (value) {
              //@TODO
              // validator para senha
              return null;
            },
            controller: senhaController,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {

                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('ENTRAR'),
            ),
          ),
        ],
      ),
    );
  }
}