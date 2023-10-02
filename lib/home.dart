


import 'package:flutter/material.dart';
import 'package:instagram/HomePage/HomeScreen.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int selectedIndex = 0;

  void setSelectedIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        body: IndexedStack(
          index: selectedIndex,
          children: [
           const HomeScreen(),
           const SearchScreen(),
           const VideoScreen(),
           const ReelsScreen(),
           const ProfileScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (index) {
            setSelectedIndex(index);
          },
          items: [
              BottomNavigationBarItem(
              label: 'Home',
              icon: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('asset/images/home.png'),
              ) ),
              BottomNavigationBarItem(
              label: 'Search',
              icon: SizedBox(
                height: 30, 
                width: 30, 
                child: Image.asset('asset/images/search.png'),
              )),
              BottomNavigationBarItem(
              label: 'New Post',
              icon: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('asset/images/addplus.png'),
              ) 
              ),
              BottomNavigationBarItem(
              label: 'Reels',
              icon:  SizedBox(
               // Tinggi ikon.
              child: Image.asset('asset/images/Reels.png'),
              ),),
              BottomNavigationBarItem(
              label: 'Profile',
              icon: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.grey[200],
                            child: ClipRRect(
                              borderRadius: BorderRadiusDirectional.circular(60.0),
                              child: Image.asset('asset/images/profile.jpg'),
                            ),
                          ),),
              
          ] 
          ),
      ),
    );
  }
}











//Profile
class Postingan extends StatelessWidget {
  const Postingan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: [ Column(
          children: [
            //appbar profile
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Text('bobbyfnd',style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold ),),
                    Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {
                        
                      }, 
                      icon: Icon(Icons.add_box_outlined),
                      ),
                       IconButton(onPressed: () {
                        
                      }, 
                      icon: Icon(Icons.menu),
                      )
                    ],
                  )
                ],
              ),
            ),
            //profile info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                    
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
                            radius: 32.0,
                            backgroundColor: Colors.grey[200],
                            child: ClipRRect(
                              borderRadius: BorderRadiusDirectional.circular(60.0),
                              child: Image.asset('asset/images/profile.jpg'),
                            ),
                          ),
                        ),
                        Image.asset('asset/images/icons/icon-story-ring.png', width: 85, )
                      ],
                    ),
                  ),
                  const Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InfoProfile(title: "Post", total: '89',),
                      InfoProfile(title: "Followers", total: '153K',),
                      InfoProfile(title: "Following", total: '7',),
                    ],
                  ))
                ],
              ),
            ),
            //title profile
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 290, 0),
            child: Text('Bobby Fnd',style: TextStyle(fontWeight: FontWeight.bold),),),
            SizedBox(height: 0,),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Column(
                children: [
                  Text('Informatics Engineering'),
                ],
              ),
            ),
             SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 150,
                    child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: () {
                    
                  }, child: Text('Edit profile',style: TextStyle(fontSize: 15,color: Colors.black),)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    width: 150,
                    child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: () {
                    
                  }, child: Text('Share profile',style: TextStyle(fontSize: 15,color: Colors.black),)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    
                    child: 
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.white,
                         padding: EdgeInsets.symmetric(horizontal: 5.0), // Atur padding horizontal sesuai kebutuhan
                         minimumSize: Size(0, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: () {
                    
                  }, child: Icon(Icons.person_add,color: Colors.black,)),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Highlights of the story'),
                  IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.keyboard_arrow_down))
                ],
              ),
            ),
            // Story
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) => 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),)
                            ),
                            Container(
                            
                            height: 66,
                            width: 66,
                            decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(image: NetworkImage('https://picsum.photos/id/${index+544}/500/500/')),

                              border: Border.all(
                                width: 2,
                                color: Colors.white
                              ),
                            ),
                            ),
                          ],
                        ),
                      ),
                    Text('Story ${index+1}')
                    ],
                  ),
                  
                ),
            ), 
         ],
        ),
        //TabBar
      ]
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [

            SliverToBoxAdapter(
              child:Postingan() ,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 50, 
                width: double.infinity,
                color: Colors.white, 
                child:  TabBar(tabs: [
                  Tab(
                      child: 
                    SizedBox(
                      height: 30, 
                      width: 30,
                      child: Image.asset('asset/images/grid.png'),
                    ),
                  ),
                  Tab(
                    child: 
                    SizedBox(
                      height: 30, 
                      width: 30,
                      child: Image.asset('asset/images/Reels.png'),
                    ),
                  ),
                  Tab(
                    child: 
                    SizedBox(
                      height: 30, 
                      width: 30,
                      child: Image.asset('asset/images/profil.png', color: Colors.black,),
                    ),
                  ),
                ]),
              ),
            )
          ];
        }, body: TabBarView(
          children: 
          [
          
          Container(
            child: GridView.builder(
            padding: EdgeInsets.symmetric(vertical: 2),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 30,
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${1 + index}/500/500",
            ),)),
          Container(child: Text('b'),),
          Container(child: Text('c'),),
        ])) 
        ),
    );
  }
}


//INFO PROFILE
class InfoProfile extends StatelessWidget {
  const InfoProfile({
    super.key,
    required this.title,
    required this.total
  });
    final String title;
    final String total;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(total,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Text(title)
      ],
    );
  }
}

//Shop
class ReelsScreen extends StatefulWidget {
  const ReelsScreen({
    super.key,
  });

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: 4, 
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              scrollDirection: Axis.vertical,
              itemBuilder:(context, index) {
                Color backgroundColor = 
                      index % 2 == 0 ? Colors.blue : Colors.green;
                return Container(
                  color: backgroundColor, 
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity, 
                          //color: Colors.purple,
                          child: Row(
                            children: [
                              Expanded(
                                child:Container(
                                  //color: Colors.green,
                                  child:Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            child: Image.asset('asset/images/post.jpeg', width: 30,height: 30,),
                                            ),
                                            SizedBox(width: 15,),
                                            Text('dilihatsaatbosan',style: TextStyle(fontSize: 15,color: Colors.white),),
                                            SizedBox(width: 15,),
                                            Container(
                                              
                                              child: TextButton(
                                              
                                              onPressed: () {
                                                
                                            }, 
                                            style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: BorderSide(color: Colors.white) // Atur radius sesuai keinginan Anda
                                            ),),
                                            
                                            child: Container(
                                              
                                              child: Text('Ikuti',style: TextStyle(color: Colors.white),),
                                            ) 
                                            ),
                                            )
                                         
                                         
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ) ),
                                Container(
                                  padding: EdgeInsets.only(top: 400),
                                  width: 60,
                                  //color: Colors.grey,
                                  child: Column(
                                    children: [
                                      Container(
                                        
                                        child: Column(
                                          children: [
                                            IconButton(onPressed: () {
                                          
                                        }, icon:Image.asset('asset/images/heart.png', color: Colors.white,) ), 
                                        Text('52,1rb',style: TextStyle(color: Colors.white),)
                                          ],
                                        )
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            IconButton(onPressed: () {
                                          
                                        }, icon:Image.asset('asset/images/pesan.png'), ), 
                                        Text('1.499',style:TextStyle(color: Colors.white),)
                                          ],
                                        )
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            IconButton(onPressed: () {
                                          
                                        }, icon:Image.asset('asset/images/shere.png'), ),
                                          Text('18,6rb',style:TextStyle(color: Colors.white),)
                                          ],
                                        )
                                      ),
                                      
                                      
                                      
                                      
                                       
                                      
                                    ],
                                  ),
                                ),
                            ],
                          ),
                          )
                          ),
                          Container(
                            height: 100, 
                            width: double.infinity,
                            //color: Colors.pink[100],
                            child: Column(
                              children: [
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child:Text('Kavan yhaa...',style: TextStyle(color: Colors.white),) ,),
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                        height: 35,
                                        child: IconButton(onPressed: () {
                                          
                                        }, icon:Image.asset('asset/images/dots.png', color: Colors.white,), ),
                                      ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            width: 180,
                                            child: TextButton(
                                              
                                              onPressed: () {
                                              
                                            }, 
                                            style: ElevatedButton.styleFrom(
                                              shadowColor: Colors.grey[700],
                                            backgroundColor: Colors.grey[700],
                                            shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            
                                             // Atur radius sesuai keinginan Anda
                                            ),),
                                            child: Row(
                                              children: [
                                                Padding(padding: EdgeInsets.only(left: 5)),
                                                Container(
                                                  height: 10,
                                                  child:Image.asset('asset/images/song.png',color: Colors.white,) ,),
                                                  SizedBox(width: 5,), 
                                                Container(
                                                  child: Text('dilihatsaatbosan',style: TextStyle(color: Colors.white,fontSize: 10),),
                                                ),
                                                Container(
                                                  height: 8,
                                                  child: Image.asset('asset/images/dot.png',color: Colors.white,),),
                                                Container(child: Text(' Audio asli',style: TextStyle(color: Colors.white,fontSize: 10),),)
                                              ],
                                            ))
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            child: Image.asset('asset/images/post.jpeg', width: 30,height: 30,),
                                            ),
                                          )
                                        ],
                                      )

                              ],
                            ),
                            
                          )

                    ],
                  )
                );
              }, ),
              if(currentIndex == 0)
              Positioned(
                left: 16, 
                top: 16, 
                child: const Text('Reels',style: TextStyle(fontSize: 20),)),

              Positioned(
                right: 16, 
                top: 16,
                child:  Icon(Icons.camera_alt_outlined)),

                
          ],
        )),
    );
    
  }
}







//Video
class VideoScreen extends StatelessWidget {
  const VideoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('New Post'),
      ),
    );
  }
}

//Search
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: ListView(
          children: [
            //  pencarian
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 390,
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'search',
                        contentPadding: EdgeInsets.symmetric(vertical: 12)
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
           // post rendom
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 30,
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${100 + index}/500/500",
            ),)
          ],
        ) 
        ),
    );
  }
}

