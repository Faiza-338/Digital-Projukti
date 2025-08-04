import 'package:digital_projucti/features/auth/domain/entities/course.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Color color;
  final Course course;

  const CourseCard({
    super.key,
    required this.color, 
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top colored section
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
            ),
        
            // Bottom white section
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
              ),
            child: Column(
              children: [
                Container(
                  width: double.infinity, 
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  margin: EdgeInsets.fromLTRB(3,3,0,0),
                    child: Text(course.title.length>25?'${course.title.substring(0, 25)}...':course.title,style: TextStyle(fontSize: 13),),
                
                
                ),
              Container(
                  width: double.infinity, 
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  margin: EdgeInsets.fromLTRB(0,0,0,0),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0,5,0,0),
                      child: Column(
                        children: [
                          
                          Row(
                            
                            children: [
                              Container(
                                
                                width: 20, // Increase the width to make the circle larger
                                height: 20, // Increase the height to make the circle larger
                                margin: const EdgeInsets.symmetric(horizontal: 2), 
                                child: const Center(
                                        child: Icon(
                                          Icons.account_circle, // Change this to any icon you want
                                          size: 20, // Adjust the icon size
                                          color: Color(0xFFE8F1FF), // Icon color
                                        ),
                                      ),
                                 
                          
                              ),
                              Container(  
                                margin: EdgeInsets.fromLTRB(2,0,5,0),
                                
                                
                                  child: Text(course.instructor,style: TextStyle(fontSize: 12),),
                              ),
                            ],
                          ),
                        
                        Container(
                          width: double.infinity, 
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  margin: EdgeInsets.fromLTRB(0,3,0,0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,5),
                        child: Row(
                          
                          children: [
                            
                           Container(
                                      width: 14, // Increased size for visibility
                                      height: 14,
                                      margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                      
                                      child: const Center(
                                        child: Icon(
                                          Icons.play_circle_fill, // Change this to any icon you want
                                          size: 14, // Adjust the icon size
                                          color: Colors.blue, // Icon color
                                        ),
                                      ),
                                    ),

                          Container(
                                  // Increase the width to make the circle larger
                                  height: 12, // Increase the height to make the circle larger
                                  margin:EdgeInsets.fromLTRB(2, 2, 0, 0),
                                  
                                  
                                        child: Text('${course.videos} Videos',style: TextStyle(fontSize: 8),),
                          ),
                          Container(
                               width: 14,// Increase the width to make the circle larger
                                  height: 14, // Increase the height to make the circle larger
                                  margin:EdgeInsets.fromLTRB(7, 2, 0, 0), 
                                  
                               
                                         child: const Center(
                                        child: Icon(
                                          Icons.access_time_filled, // Change this to any icon you want
                                          size: 14, // Adjust the icon size
                                          color: Colors.blue, // Icon color
                                        ),
                                      ),
                            ),
                          Container(
                                  // Increase the width to make the circle larger
                                  height: 12, // Increase the height to make the circle larger
                                  margin:EdgeInsets.fromLTRB(2, 2, 0, 0), 
                                  
                                  decoration: BoxDecoration(
                                    
                                          
                                          shape: BoxShape.rectangle,
                                          
                                        ),
                                        child: Text('${course.hours} Hours',style: TextStyle(fontSize: 8),),
                          ),
                          Container(
                               width: 14,// Increase the width to make the circle larger
                                  height: 14, // Increase the height to make the circle larger
                                  margin:EdgeInsets.fromLTRB(7, 2, 0, 0), 
                                  
                                  
                                        child: const Center(
                                        child: Icon(
                                          Icons.edit_note, // Change this to any icon you want
                                          size: 14, // Adjust the icon size
                                          color: Colors.blue, // Icon color
                                        ),
                                      ),
                            ),
                          Container(
                                  // Increase the width to make the circle larger
                                  height: 12, // Increase the height to make the circle larger
                                  margin:EdgeInsets.fromLTRB(2, 2, 0, 0), 
                                  
                                  decoration: BoxDecoration(
                                    
                                          
                                          shape: BoxShape.rectangle,
                                          
                                        ),
                                        child: Text('${course.lessons} Lessons',style: TextStyle(fontSize: 8),),
                          ),
                          ],
                        ),
                      ),
                    Row(
                      children: [
                        Container(
                                // Increase the width to make the circle larger
                                height: 12, // Increase the height to make the circle larger
                                margin:EdgeInsets.fromLTRB(2, 2, 0, 0),
                                
                               
                                      child: Text('\$${course.price}',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue),),
                        ),
                        Container(
                                // Increase the width to make the circle larger
                                height: 15, // Increase the height to make the circle larger
                                margin:EdgeInsets.fromLTRB(7, 2, 0, 0),
                                padding: EdgeInsets.symmetric(vertical: 2,horizontal: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  
                                        color: const Color.fromARGB(255, 215, 220, 226),
                                        shape: BoxShape.rectangle,
                                        
                                      ),
                                      child: Text(course.tag,style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                      ],
                    )
                    ],
                  ),
                        )
                        ],
                      ),
                    )
              )
              
              ],
            
            ),
            
            ),
          ],
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, size: 12, color: Colors.white),
                  SizedBox(width: 3),
                  Text('${course.rating}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        
          Positioned(
            top: 10,
            right: 10,
            child: const Icon(Icons.bookmark_border, color: Colors.white),
          ),
        ]
      ),
    
          

    );
  }
}
