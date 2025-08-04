import 'package:digital_projucti/features/auth/data/demo_courses.dart';
import 'package:digital_projucti/features/auth/presentation/widgets/catagory_selector.dart';
import 'package:digital_projucti/features/auth/presentation/widgets/course_card.dart';
import 'package:digital_projucti/features/auth/presentation/widgets/popular_courses.dart';
import 'package:digital_projucti/features/auth/presentation/widgets/slider_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenheight= MediaQuery.of(context).size.height;
    double screenwidth= MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Navigation Bar')),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: screenheight,
            width: screenwidth,
            color: const Color.fromARGB(255, 181, 211, 235),
            child: Column(
              
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 177,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(247, 247, 248, 1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        width: 353,
                        // height: 178,
                         margin: EdgeInsets.fromLTRB(20,40,20,40),
                        
                        child: SliderWidget(
          
                        ),
                      ),
                    ),
                  ],
                ),
                              Container(
                                
                        child: Column(
                        children: [
                              Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20,0,0,5),
                              
                              child: Text('Catagories',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal)),
                              ),
                              Container(
                                 margin: EdgeInsets.fromLTRB(0,0,20,5),
                              
                              child: TextButton(
                                  onPressed: () {
                                    // Add navigation or action here
                                    print("See All clicked");
                                  },
                                  child: const Text(
                                    'See All >',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue, // optional
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
              children: [
                // CategorySelector widget
                Container(
                   
                  width: double.infinity,
                  child: const CategorySelector(), //  CategorySelector widget
                ),
                
              ],
            ),
                          ),
                        ],
                      ),
                    ],
                  )
          
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        
                        margin: EdgeInsets.fromLTRB(0,10,0,0),
                        
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(  
                                  margin: EdgeInsets.fromLTRB(20,5,0,5),
                                    child: Text('Popular Courses',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
                            
                                ),
                                Container(  
                                  margin: EdgeInsets.fromLTRB(0,5,20,5),
                                    child: TextButton(
                                            onPressed: () {
                                              // Add navigation or action here
                                              print("See All clicked");
                                            },
                                            child: const Text(
                                              'See All >',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue, // optional
                                              ),
                                            ),
                                          ),
                                ),
                              ],
                            ),
                            Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.symmetric(vertical: 3),
                                  child: const PopularCourses(), // popular courses
                                ),
          
          
                            Container(
                               
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                              child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                            children: List.generate(DemoCourses.courses.length, (index) {
                                          return CourseCard(
                                            course: DemoCourses.courses[index],
                                        color: index.isEven ? Colors.purple : Colors.blue,
                                      );
                                    }
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  
  
  }
  
}