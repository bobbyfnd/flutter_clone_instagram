


import 'package:flutter/material.dart';
import 'package:instagram/login.dart';

class Regis extends StatefulWidget {
  const Regis({super.key});

  @override
  State<Regis> createState() => _RegisState();
}

class _RegisState extends State<Regis> {
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
              SizedBox(height: 60,),
              Center(
                child: Container(
                  
                  child: Text('Instagram', style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),)
                ),
              ),
              SizedBox(height: 10,),
              Container(
                  
                  child: Text('Sign up to see photos and videos from your friends', style: TextStyle(fontSize: 12,color: Colors.grey),)
                ),
              SizedBox(height: 10,),
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
                SizedBox(height: 10,),
                const Row(
                children: [
                  Expanded(child: Divider(
                    color: Colors.black,
                  )),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('OR', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                  ),
                  Expanded(child: Divider(
                    color: Colors.black
                  )),
                ],
                ),
              const SizedBox( height: 10,),
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
                const SizedBox(height: 15,),
                TextFormField(
                   decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    hintText: 'Masukan Nama',
                    labelText: 'Full Name'
                  ),
                ),
                const SizedBox(height: 15,),
                TextFormField(
                   decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    hintText: 'Username',
                    labelText: 'Username'
                  ),
                ),
                const SizedBox(height: 15,),
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
                SizedBox(height: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Container(
                  child: Text('People who user our service may have uploaded your contact' , style: TextStyle(fontSize: 11,color: Colors.grey),),
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Information to Instagram.',style: TextStyle(fontSize: 11,color: Colors.grey) ),
                      ),
                      Container(
                        child: Text('Learn More',style: TextStyle(fontSize: 11,color: Colors.blue)),
                      )
                    ],
                  )
                ),
                SizedBox(height: 10,),
                 Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('By signing up,you agree to our.',style: TextStyle(fontSize: 11,color: Colors.grey)),
                      ),
                      Container(
                        child: Text('Terms,Privacy Policy and Cookies',style: TextStyle(fontSize: 11,color: Colors.blue)),
                      )
                    ],
                  )
                ),
                Container(
                        child: Text('Policy',style: TextStyle(fontSize: 11,color: Colors.blue)),
                      )

                  ],
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Hallogin(),));
                }, child: Text('Sign up',style: TextStyle(fontSize: 15),)),
                ),
                const SizedBox(height: 20,),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account ? ', style: TextStyle(fontSize: 12,color: Colors.grey ),),
                    Text('Log in', style: TextStyle(color: Colors.blue, fontSize: 12),)
                  ],
                ),
                
               
            ],
          ),
        ),
      ),
    );
  }
}