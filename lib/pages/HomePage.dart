import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:education_ui/pages/Coursepage.dart';
import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _textEditingController = TextEditingController();

  void clear(){
    setState((){
      _textEditingController .clear();
    });
  }

  // static information
  List names = [
    "Category",
    "Classes",
    "Free Courses",
    "Book Store",
    "Live Course",
    "Leader Board",
  ];

  //list of colors
  List <Color> colors = [
    Colors.lightGreen,
    Colors.deepPurpleAccent.shade400,
    Colors.orange.shade400,
    Colors.lightBlue.shade400,
    Colors.yellow.shade400,
    Colors.redAccent.shade200,
  ];

  //list of Icons
  List<Icon> caticon = [
    const Icon(Icons.category,color: Colors.white,size: 30),
    const Icon(Icons.video_library,color: Colors.white,size: 30),
    const Icon(Icons.assessment,color: Colors.white,size: 30),
    const Icon(Icons.store,color: Colors.white,size: 30),
    const Icon(Icons.play_circle_fill,color: Colors.white,size: 30),
    const Icon(Icons.emoji_events,color: Colors.white,size: 30),
  ];

  // list of images
  List  courseimg = [
    "Flutter",
    "C#",
    "Python",
    'React Native',
  ];
  final int _selectedindex = 1;
  void changeIndex (int index){
    setState((){
      index = _selectedindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightGreenAccent.shade100,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft:  Radius.circular(15),
                    bottomRight:  Radius.circular(15),
                  ),
                  color: Colors.lightGreen,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.grid_view_rounded)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active)),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child:   Text("Explore Your Course",
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,letterSpacing: 1,wordSpacing: 1
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search..",
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(18),
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.search),
                            filled: true,
                            suffixIcon: IconButton(onPressed: clear, icon: const Icon(Icons.clear)),
                          ),
                          controller: _textEditingController ,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: names.length,
                  physics:const NeverScrollableScrollPhysics (),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.1,
                    ),
                    itemBuilder:(context, index){
                    return Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            print("detector work!");
                          },
                          child: Container(
                            height:70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: colors[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: caticon[index],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          names[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Your Courses",style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                    TextButton(onPressed: (){}, child: const Text("See all",style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.lightGreen,
                    ),),),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  itemCount: courseimg.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                    ),
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Coursepage(courseimg:courseimg[index])));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.lightGreen.shade200,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Padding(padding: const EdgeInsets.all(15),
                              child: Image.asset(
                                "assets/images1/${courseimg[index]}.png",
                                width: 100,height: 100,
                              ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(courseimg[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "55 videos",
                                style:  TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:CurvedNavigationBar(
        height: 70,
        color: Colors.lightGreenAccent,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.lightGreenAccent.shade100,
        index: _selectedindex,
        onTap: (int index){
          setState((){
            index = _selectedindex;
          });
        },
        animationDuration: Duration(milliseconds: 500),
        items: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ],
      ) ,
    );
  }
}
