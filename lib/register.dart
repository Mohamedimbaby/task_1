import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:untitled/sign_in.dart';


class register extends StatefulWidget {
  @override
  State<register> createState() => _register();
}

class _register extends State<register> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(
            children: [
              Image.asset(
              'assets/signin.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .15,
              fit: BoxFit.fill,
        ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 15 , top: 25),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      color: Colors.black
                  ),
                  child: Icon(Icons.arrow_back , color: Colors.grey.shade100,),
                ),
              )
            ],
          ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Welcome to 7Krave',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
          SizedBox(
            height: 10,
          ),
                Row(
                  children: [
                    Text('Register',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: 170,
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
               SizedBox(height: 10,),
                Text('Email',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300)),
                SizedBox(
                  height: 5,
                ),
               TextFormField(
                 controller:emailController ,
                 keyboardType: TextInputType.emailAddress,
                 obscureText: false,
                 decoration: InputDecoration(
                   hintText: 'Eg. example@gmail.com',
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(1)),
                 ),
               ),
                SizedBox(height: 10,),
                Text('Phone Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300)),
                SizedBox(
                  height: 5,
                ),
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.DROPDOWN,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  textFieldController: phoneNumberController,
                  formatInput: false,
                  keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
                SizedBox(height: 10,),
                Text('Password',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300)),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1)),
                  ),
                ),
                SizedBox(height: 10,),
                FlatButton(
                    onPressed: () {},
                    color: Colors.blue,
                    minWidth: 400,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.grey.shade50),
                    )),
                SizedBox(
                  height: 10,
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
                    Text('Has any account?'),
                    Column(
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (c) {
                                return register();
                              }));
                            },
                            child: Text(
                              'Sign in here',
                              style: TextStyle(color: Colors.blue),
                            )),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('By regestering your account, you are agree to our',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('terms and condition',
                        style: TextStyle(
                            color: Colors.blue,
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