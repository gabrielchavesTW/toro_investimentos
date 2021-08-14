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
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "E-mail ou CPF:"),
            validator: (value) {
              //@TODO
              // validator para email ou cpf

              return null;
            },
            controller: emailOuCpfController,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Senha:"),
            validator: (value) {
              //@TODO
              // validator para senha
              return null;
            },
            controller: senhaController,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text('ENTRAR'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
