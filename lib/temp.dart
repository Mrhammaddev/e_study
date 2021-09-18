//  // Navigator.of(context).push(MaterialPageRoute(
//                             //     builder: (context) => OTPScreen(_controller.text)));

//  // ignore: non_constant_identifier_names
//  TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Phone Number',
//                           prefix: Padding(
//                             padding: EdgeInsets.all(4),
//                             child: Text('+1'),
//                           ),
//                         ),
//                         maxLength: 10,
//                         keyboardType: TextInputType.number,
//                         controller: _controller,
//                       ),

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  // String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 55,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              formatInput: false,
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
              inputBorder: InputBorder.none,
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     formKey.currentState!.validate();
          //   },
          //   child: Text('Validate'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     getPhoneNumber('+15417543010');
          //   },
          //   child: Text('Update'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     formKey.currentState!.save();
          //   },
          //   child: Text('Save'),
          // ),
        ],
      ),
    );
  }

//   void getPhoneNumber(String phoneNumber) async {
//     PhoneNumber number =
//         await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

//     setState(() {
//       this.number = number;
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
}
