import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:untitled/register.dart';



class sign_in extends StatefulWidget {
  @override
  State<sign_in> createState() => _sign_in();
}

class _sign_in extends State<sign_in> {
  TextEditingController phoneNumberController = TextEditingController();
  var key = GlobalKey<FormState>();
  bool _validate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/signin.png',
              width: 400,
              height: 150,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to 7Krave',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text('Sign in',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        width: 180,
                      ),
                      Text('Help',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.w300)),
                      Icon(
                        Icons.help,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Phone Number',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: 8,
                  ),
                  Form(
                    key: key,
                    child: InternationalPhoneNumberInput(

                      onInputChanged: (PhoneNumber number) {
                        print(number.phoneNumber);
                      },

                      onInputValidated: (bool value) {
                        print(value);
                        setState(() {
                          _validate = value;
                        });
                        },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.DROPDOWN,
                      ),
                      ignoreBlank: true,
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      selectorTextStyle: TextStyle(color: Colors.black),
                      textFieldController: phoneNumberController,
                      formatInput: true,
                      keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                      inputBorder: OutlineInputBorder(),
                      onSaved: (PhoneNumber number) {
                        print('On Saved: $number');
                      },
                    ),
                  ),


                  SizedBox(
                    height: 15,
                  ),
                  FlatButton(
                      onPressed: () {
                        if(phoneNumberController.text.length > 11 ){
                          _validate = true;
                        }
                        else
                          _validate = false;
                        setState(() {

                        });

                      },
                      color: Colors.blue,
                      minWidth: 400,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.grey.shade50),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('or'),
                    ],
                  ),
                  FlatButton(
                      onPressed: () {},
                      minWidth: 400,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Sign with google',
                        style: TextStyle(color: Colors.blue),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Doesn’t has any account?'),
                      Column(
                        children: [
                          FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (c) {
                                  return register();
                                }));
                              },
                              child: Text(
                                'Register here',
                                style: TextStyle(color: Colors.blue),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Use the application according to policy rules. Any',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('kinds of violations will be subject to sanctions',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w300)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
//             color: Colors.orange,
//             width: MediaQuery.of(context).size.width,
//             height: 180,
//             Image
//           )
