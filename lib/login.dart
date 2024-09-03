import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _PasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 50,
              child: Icon(Icons.person_rounded , size: 90, color: Colors.white,),
            ),
            const SizedBox(height: 30,),
            TextField(
                    decoration: InputDecoration(
                      label: Text('Email', style: GoogleFonts.poppins().copyWith(
                        fontSize: 18,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    hintText: 'Enter your email',
                    hintStyle: GoogleFonts.poppins().copyWith(
                      fontSize: 15,
                      color: const Color(0xff333333),
                      //fontWeight: FontWeight.w400,
                    ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(30),
            
                      ),
                      contentPadding: const EdgeInsets.only(left: 20, top: 14, bottom: 14),
                      ),
                      keyboardType: TextInputType.emailAddress,                    
                    ),     
                  const SizedBox(height: 50,),
                  TextField(
                    obscureText: _PasswordVisible,
                    decoration: InputDecoration(
                      label: Text('Password', style: GoogleFonts.poppins().copyWith(
                      fontSize: 18  ,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w400,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: GoogleFonts.poppins().copyWith(
                      fontSize: 15,
                      color: const Color(0xff333333),
                      //fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _PasswordVisible = !_PasswordVisible;
                        });
                      },
                      icon: Icon(_PasswordVisible ? Icons.visibility_off_rounded : Icons.visibility_rounded, color: Colors.blueAccent,),
                    ),
                    contentPadding: const EdgeInsets.only(left: 20, top: 14, bottom: 14),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                        ),
                        child: Text('Log In', style: GoogleFonts.poppins().copyWith(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                    ),
                  ],
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: (){},
                    child:
                    Text('Forgot Password?', style: GoogleFonts.poppins().copyWith(
                      fontSize: 15,
                      color: const Color(0xff333333),
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?  ', style: GoogleFonts.poppins().copyWith(
                        fontSize: 15,
                        color: const Color(0xff333333),
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text('Sign Up', style: GoogleFonts.poppins().copyWith(
                          fontSize: 15,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w600,
                        ),
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