import 'package:analytics_flutter/app/constants/theme.dart';
import 'package:analytics_flutter/app/widgets/empty_app_bar_widget.dart';
import 'package:analytics_flutter/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: _buildBody()
    );
  }

  Material _buildBody() {
    return Material(
      child: _buildCover()
    );
  }

  Material _buildCover() {
    return Material(
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          color: themeData.primaryColor,
          image: DecorationImage(
            image: AssetImage('assets/images/telefonica.png'),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 220,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                child: _buildCardForm(),
              )
            ],
          ),
        )
      )
    );
  }

  Widget _buildCardForm() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _loginFormKey,
      child: Column(
          children: <Widget>[
            _buildUsernameField(),
            _buildPasswordField(),
            _buildSignInButton()
          ],
        )
    );
  }

  Widget _buildUsernameField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'E-mail'
        ),
        controller: _userEmailController,
      )
    );
  }

  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Senha'
        ),
        controller: _passwordController,
      )
    );
  }

  Widget _buildSignInButton() {
    return SizedBox(
      width: double.infinity, // match_parent
      child: RaisedButton(
        onPressed: () => Navigator.of(context).pushReplacementNamed(Routes.home),
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: Text(
          'ENTRAR',
          style: TextStyle(fontSize: 20)
        ),
      )
    );
  }
}
