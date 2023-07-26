import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var nameController = TextEditingController();
  var passContoller = TextEditingController();
  var gender;
  var ischecked = false;
  var ischecked2 = false;
  var ischecked3 = false;
  var experience;
  var isOn = false;
  var selecteddpt;
  List departments = ['BCA', 'CS', 'Bsc.Data Science', 'MCA'];
  RangeValues slidervalue = const RangeValues(0, 500);
  RangeValues slidervalue2 = const RangeValues(0, 500);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Fill the form',
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20, 0, 10.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(

                    suffixIcon: Icon(
                      Icons.icecream,

                    ),
                    label: Text(
                      'Name',
                      style: TextStyle(color: Colors.black),
                    ),
                    hintText: 'Enter Name',
                    border: OutlineInputBorder(),

                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20, 0, 10.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: passContoller,
                obscureText: true,
                obscuringCharacter: '.',
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.icecream,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Password',
                      style: TextStyle(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.black),
              ),
            ),
            RadioListTile(
                title: Text('Male'),
                dense: true,
                activeColor: Colors.black,
                value: 'male',
                groupValue: gender,
                onChanged: (val) {
                  setState(() {
                    gender = val;
                  });
                }),
            RadioListTile(
                title: Text('female'),

                activeColor: Colors.black,
                value: 'female',
                groupValue: gender,
                onChanged: (val) {
                  setState(() {
                    gender = val;
                  });
                }),
            Row(
              children: [
                Radio(
                    value: 'experienced',
                    groupValue: experience,
                    activeColor: Colors.black,
                    onChanged: (val) {
                      setState(() {
                        experience = val;
                      });
                    }),
                Text('Experienced'),
                Radio(
                    value: 'fresher',
                    groupValue: experience,
                    activeColor: Colors.black,
                    onChanged: (val) {
                      setState(() {
                        experience = val;
                      });
                    }),
                Text('Fresher'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Skills Acquired:',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    value: ischecked,
                    activeColor: Colors.black,
                    onChanged: (val) {
                      setState(() {
                        ischecked = val!;                          });
                    }),
                Text('html'),
                Checkbox(
                    value: ischecked2,
                    activeColor: Colors.purple,
                    onChanged: (val) {
                      setState(() {
                        ischecked2 = val!;
                      });
                    }),
                Text('css'),
                Checkbox(
                    value: ischecked3,
                    activeColor: Colors.purple,
                    onChanged: (val) {
                      setState(() {
                        ischecked3 = val!;
                      });
                    }),
                Text('bootstrap'),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Already subscribed'),
                ),
                SizedBox(
                  width: 180,
                ),
                Expanded(
                  child: Switch(
                      value: isOn,
                      activeColor: Colors.black,
                      onChanged: (val) {
                        setState(() {
                          isOn = val!;
                        });
                      }),
                ),
              ],
            ),
            RangeSlider(
                values: slidervalue,
                activeColor: Colors.black,
                min: 0,
                max: 500,
                divisions: 5,
                onChanged: (RangeValues val) {
                  setState(() {
                    slidervalue = val;
                  });
                }),
            Slider(
                value: slidervalue2.start, // Assuming slidervalue is of type RangeValues
                activeColor: Colors.black,
                thumbColor: Colors.blue,
                inactiveColor: Colors.grey,
                min: 0,
                max: 500,
                divisions: 5,
                onChanged: (double val) { // Change the parameter type to double
                  setState(() {
                    slidervalue2 = RangeValues(val, slidervalue2.end); // Assuming slidervalue is of type RangeValues
                  });
                }
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$slidervalue'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                  elevation: 15,
                  value: selecteddpt,
                  hint: Text('select departements'),
                  items: departments
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selecteddpt = val;
                    });
                  }),
            ),
            Text('Provide Contact details'),
            DropdownButton(
                items: departments.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(), onChanged:(val){
              setState(() {
                selecteddpt=val!;
              });
            })
          ],
        )),
      ),
    );
  }
}
