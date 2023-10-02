



import 'package:flutter/material.dart';
import 'package:instagram/home.dart';
import 'package:instagram/register.dart';


class Hallogin extends StatefulWidget {
  const Hallogin({super.key});

  @override
  State<Hallogin> createState() => _HalloginState();
}

class _HalloginState extends State<Hallogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200,),
              Center(
                child: Container(
                  
                  child: Text('Instagram', style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),)
                ),
              ),
              const SizedBox( height: 20,),
              TextFormField(
                   decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    hintText: 'Masukan Email',
                    labelText: 'Email'
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    hintText: 'Masukan Password',
                    labelText: 'Password'
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: 400,
                  child: 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                }, child: Text('Log in',style: TextStyle(fontSize: 15),)),
                ),
                const SizedBox(height: 20,),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forgot your login details ? ', style: TextStyle(fontSize: 12),),
                    Text('Get help logging in', style: TextStyle(color: Colors.blue, fontSize: 12),)
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                children: [
                  Expanded(child: Divider(
                    color: Colors.black,
                  )),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider(
                    color: Colors.black
                  )),
                ],
                ),
                Container(
                  height: 50,
                  width: 400,
                  child: 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: () {
                  
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook,size: 30,),
                    SizedBox(width: 5,),
                    Text('Continue as Coo kiess',style: TextStyle(fontSize: 15),)
                  ],
                )),
                ),
                SizedBox(height:59,),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 17),
                      child: Text('Don\'t have an account ? ',style: TextStyle(color: Colors.grey),),),
                    
                    Container(
                      child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Regis(),));
                    }, child: Text('Sing up')),)
                    
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}