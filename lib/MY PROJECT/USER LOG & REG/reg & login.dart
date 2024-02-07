import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_project_app/MY%20PROJECT/USER%20LOG%20&%20REG/User%20HELPER.dart';
import 'package:my_project_app/MY%20PROJECT/startbutton_page.dart';
class registrpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => pageregstate();
}

class pageregstate extends State<registrpage> {
  var formkey = GlobalKey<FormState>();
  String? username;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,height: 900,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/474x/d5/a9/43/d5a94310e9aad10cb354ead30bf47e25.jpg"),fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "user name",
                      labelStyle: GoogleFonts.aboreto(color: Colors.black54),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide(color: Colors.black),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    onSaved: (usname) {
                      username = usname;
                    },
                    validator: (usname) {
                      if (usname!.isEmpty) {
                        return "Enter valid username";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "email",
                      labelStyle: GoogleFonts.aboreto(color: Colors.black54),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide(color: Colors.black),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    onSaved: (mail) {
                      email = mail;
                    },
                    validator: (Email) {
                      if (Email!.isEmpty) {
                        return "Enter valid email id";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "password",
                      labelStyle: GoogleFonts.aboreto(color: Colors.black54),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide(color: Colors.black),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),

                      ),
                    ),
                    onSaved: (passord) {
                      password = passord;
                    },
                    validator: (pword) {
                      if (pword!.isEmpty) {
                        return " Incorrect password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 45,),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      Firehelper().signUP(mail: email!, pwd: password!).then((value) {
                        if (value == null) {
                          Get.to(loginsfire());
                        } else {
                          Get.snackbar("Error", value);
                        }
                      });
                    }
                  },
                  child: Text("REGISTER", style: GoogleFonts.aBeeZee(color: Colors.black),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[300]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    home: loginsfire(),
  ));
}

class loginsfire extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => fireloginstate();
}

class fireloginstate extends State<loginsfire> {
  var formkey = GlobalKey<FormState>();
  String? imail;
  String? ipass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,height: 900,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/474x/d5/a9/43/d5a94310e9aad10cb354ead30bf47e25.jpg"),   fit:BoxFit.cover,

          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250, right: 20, left: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: GoogleFonts.abhayaLibre(color: Colors.black54,fontSize: 20),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide(color: Colors.black),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    onSaved: (umail) {
                      imail = umail;
                    },
                    validator: (umail) {
                      if (umail!.isEmpty) {
                        return "Incorrect";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 45,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "password",
                      labelStyle: GoogleFonts.abhayaLibre(color: Colors.black54,fontSize: 20),
                      // border: OutlineInputBorder(
                      //
                      //   borderRadius: BorderRadius.circular(100),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),
                        borderSide:BorderSide(color: Colors.black),),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    onSaved: (ppass) {
                      ipass = ppass;
                    },
                    validator: (ppass) {
                      if (ppass!.isEmpty) {
                        return "Incorrect password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 45,),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      Firehelper().Signinn(mail: imail!, pass: ipass!).then((value) {
                        if (value == null) {
                          Get.to(startbutton());
                        } else {
                          Get.snackbar("Error", "User not found");
                        }
                      });
                    }
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.aBeeZee(color: Colors.black87,fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[300]),
                ),
                SizedBox(height: 40,),
                TextButton(
                  onPressed: () {
                    Get.to(registrpage());
                  },
                  child: Text("Register here...",style: GoogleFonts.aBeeZee(color: Colors.black),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
