import 'package:flutter/material.dart';

class Coursepage extends StatefulWidget {
 final String courseimg;

  Coursepage({Key? key,required this.courseimg }) : super(key: key);

  @override
  State<Coursepage> createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  bool clicked = false;

  //video list
  List videosList =[
    "Intoduction",
    "installation IDE",
    "complete course sec 1 ",
    "complete course sec 2 ",
    "complete course sec 3 ",
    "complete course sec 4 ",
    "complete course sec 5 ",
    "complete course sec 6 ",
    "complete course sec 7 ",
    "complete course sec 8 ",
    "complete course sec 9 ",
    "complete course sec 1 ",
    "complete course sec 11 ",
    "complete course sec 12",
    "complete course sec 13",
    "complete course sec 14",
    "complete course sec 15",
    "complete course sec 16",
    "complete course sec 17",
    "complete course sec 18",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active,size: 25,))
        ],
        title: Text(widget.courseimg),
      ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white60,
                image: DecorationImage(image: AssetImage("assets/images1/${widget.courseimg}.png"))
              ),
              child: Center(
                child: Center(
                  child: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.play_circle_fill,size: 42,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("${widget.courseimg} Full Course Tutorial: ",style:const  TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: 1,
              wordSpacing: 1,
            )),
            const SizedBox(
              height: 15,
            ),
            Text("Created by Sakthivel",style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w500,
              fontSize: 18,
              letterSpacing: 1,
              wordSpacing: 1,
            )),
            const SizedBox(
              height: 15,
            ),
            Text("35 Videos",style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w500,
              fontSize: 15,
              letterSpacing: 1,
              wordSpacing: 1,
            )),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState((){
                        clicked = false;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:  const Center(child: Text("Videos",style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState((){
                        clicked = true;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(child: Text("Description",style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                      )),
                    ),
                  ),

                ],
              ),
            ),
            clicked?Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlueAccent.shade200,
                    Colors.lightGreenAccent.shade200,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("This Course is help to improve your knowledge about the coding"
                  "This videos have are very quality content\n you can over through this video and train yourself"
                  "At-least you must take  1 hour training regularly to become good coder",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 15,
                  letterSpacing: 1,
                  wordSpacing: 1,
                ),
              ),

            ):Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [

                    Colors.lightBlueAccent.shade200,
                    Colors.lightGreenAccent.shade200,
                  ],
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight
                ),
              ),
              padding: EdgeInsets.all(15),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  itemCount: videosList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                return ListTile(
                  onTap: (){},
                  tileColor: Colors.white54,
                  contentPadding: EdgeInsets.all(10),
                  title: Text(videosList[index]),
                  leading: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.play_circle_fill),
                    iconSize: 35,
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
