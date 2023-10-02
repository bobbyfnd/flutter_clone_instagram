 



// Home
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  
  Widget build(BuildContext context) {
    


    
    return Scaffold(
     appBar: AppBar(
     
      backgroundColor: Colors.white,
      elevation: 0,
      title: 
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Image.asset('asset/images/IG logo.png'),
        Container(
          width: 30,
          child: IconButton(onPressed: () {
            
          }, icon: Image.asset('asset/images/arrow.png'))  
        )
       ],),
       
     actions: [
      IconButton(
            icon: Image.asset('asset/images/heart.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('asset/images/pesanicon.png'),
            onPressed: () {},
          ),
     ],
     ),
     body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          
          SingleChildScrollView(
            
            child: Row(
             children: [
               Column(
            
            
            children: [
              Container(
                child: 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Stack(
                      
                        children: [
                          Container(
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundColor: Colors.grey[200],
                              child: ClipRRect(
                                borderRadius: BorderRadiusDirectional.circular(60.0),
                                child: Image.asset('asset/images/profile.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            
                            height: 120,
                            width: 24,
                            margin: EdgeInsets.symmetric(horizontal: 45),
                            decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2,),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300]!,
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ]
                          ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(47, 50, 0, 0),
                            
                            child:Image.asset('asset/images/Button.png') ,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 75, 0, 0),
                            child: Text('My Story', style: TextStyle(fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                ),
              ),
            ]),

             ],
            ),
          ),
          
          Divider(),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      
                      child: Stack(
                        alignment:Alignment.center ,
                        children: [
                          Container(
                            decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300]!,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                )
                              ]
                            ),
                            child: CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Colors.grey[200],
                              child: ClipRRect(
                                borderRadius: BorderRadiusDirectional.circular(60.0),
                                child: Image.asset('asset/images/profile.jpg'),
                              ),
                            ),
                          ),
                          Image.asset('asset/images/icons/icon-story-ring.png', width: 36, )
                        ],
                      ),),
                  ),
                  Container(child: Text('BobbyFnd',style: TextStyle(fontWeight: FontWeight.bold),),),
                  SizedBox(width: 220,),
                  Container(
                    height: 37,
                    child: IconButton(onPressed: () {
                    
                  }, icon: Image.asset('asset/images/dots.png')),
                  ),
                ],
              ),
              SizedBox(height:0,),
              Container(
                height: 360,
                width: 500,
                child: Image.asset('asset/images/post.jpeg'),
              )
            ],
          )
          
        ],
      ),
     ), 
    );
  }
}