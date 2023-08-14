import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowButtomSheet extends StatefulWidget {
  @override
  State<ShowButtomSheet> createState() => _ShowButtomSheetState();
}

class _ShowButtomSheetState extends State<ShowButtomSheet> {
  // bool _isPressed = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    "Add New Task",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        "enter your tasks",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter task title';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    maxLines: 4,
                    minLines: 4,
                    decoration: InputDecoration(
                      label: Text(
                        "Description",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter task title';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Row(
                        children: [
                          Text("SelectTime:",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Spacer(),
                          Text(""),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print("object");
                        }
                        ;
                      },
                      child: Text(
                        "AddTask",
                      ))

                  // IconButton(
                  //   icon: _isPressed ? Icon(Icons.add) : Icon(Icons.done_all_outlined),
                  //   onPressed: () {
                  //     setState(() {
                  //       _isPressed = !_isPressed;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      // Do something with the selected date
      print('Selected date: ${picked.toString()}');
      setState(() {});
    }
  }
}
