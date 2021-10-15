import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 70.0, 10.0, 0.0),
        child: Column(
          children: <Widget>[
            Text(
              'Login now',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Please Login or sign up to continue using our app',
              style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              'Enter via social networks',
              style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 0.0, 5.0, 0.0),
                    height: 60.0,
                    child: FlatButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(10.0),
                      color: Colors.blue[300],
                      textColor: Colors.white,
                      child: Image.asset('assets/twitter.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    child: FlatButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(10.0),
                      color: Colors.blue[900],
                      textColor: Colors.white,
                      child: Image.asset('assets/facebook.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'or login with email',
              style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    child: TextFormField(
                      decoration: InputDecoration(fillColor: Colors.white,hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                      ),
                    ),
                  ),
                ),
            ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(fillColor: Colors.white, hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value){
                    }
                ),
                SizedBox(width: 5.0,),
                Text('Remember me'),
                SizedBox(width: 120.0,),
                Text('Forgot password?'),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.blue[700],
                    ),
                    margin: EdgeInsets.all(10),
                    height: 60.0,
                    child: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/thanksPage');
                      },
                      child: Text("Login",
                          style: TextStyle(fontSize: 15, color: Colors.white,
                          backgroundColor: Colors.blue[700],
                          )),

                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    padding: EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
                    textColor: Colors.grey,
                    child: Text("Don't have an account?", style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 60.0, 0.0),
                    textColor: Colors.blue,
                    child: Text("Sign up", style: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

