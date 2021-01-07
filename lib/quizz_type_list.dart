import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:Quizz/data.dart';
import 'constans.dart';

class QuizTypeList extends StatefulWidget {
  @override
  _QuizTypeListState createState() => _QuizTypeListState();
}

class _QuizTypeListState extends State<QuizTypeList> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      body:Container(
           decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [gradientEndColor, gradientStartColor, gradientEndColor])
          ),
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  
                  SizedBox(
                    height: 50.0,
                  ),

                  Center(
                    child: Text(
                      'QuizLand',
                        style: TextStyle(
                          fontFamily: 'Sitka Banner',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                  ),

                  Center(
                    child: Text(
                      'the planet of Quiz',
                        style: TextStyle(
                          fontFamily: 'Sitka Banner',
                          fontSize: 20,
                           color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                  ),

                  Container(
                    height: 350,
                      child: Swiper(
                        itemCount: typeOfQuiz.length,
                        itemWidth:  MediaQuery. of(context). size. width,
                        itemHeight: MediaQuery. of(context). size. height,
                        layout: SwiperLayout.CUSTOM,
                        customLayoutOption: new CustomLayoutOption(
                        startIndex: 1,
                        stateCount: typeOfQuiz.length,
                    ).addRotate([
                      -45.0/180,
                      0.0,
                      45.0/180
                    ]).addTranslate([
                      new Offset(-370.0, -40.0),
                      new Offset(0.0, 0.0),
                      new Offset(370.0, -40.0)
                    ]),
                        pagination: SwiperPagination(
                          alignment:Alignment.bottomCenter,
                          builder: DotSwiperPaginationBuilder(
                            activeColor: Colors.blue[900],
                            activeSize: 12,
                            space: 10,
                            )
                        ),
                        itemBuilder: (context, index){
                          return Stack(
                             
                            children: <Widget>[
                              Center(
                                child: Container(
                                 
                                  child: Column(
                                    
                                    children: <Widget>[
                                      SizedBox(height: 30),
                                      Card(
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(32),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                                
                                              Image.asset( 
                                                typeOfQuiz[index].iconImage,
                                              scale: 0.8,
                                              ),
                                              SizedBox(height: 50),
                                              Text(
                                                typeOfQuiz[index].name,
                                                style: TextStyle(
                                                fontFamily: 'Sitka Banner',
                                                fontSize: 27,
                                                color: Colors.black,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                               Text(
                                                'Wybierz',
                                                style: TextStyle(
                                                fontFamily: 'Sitka Banner',
                                                fontSize: 15,
                                                decoration: TextDecoration.underline,
                                                color: Colors.black,
                                                ),
                                                
                                                textAlign: TextAlign.left,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                    ),
                                ),
                              ),
                              
                            ]
                          );
                        },

                      ),
                    
                  ),
                   
                ]
             ),
          ),
        ),

        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            ),
            color: Colors.white,
          ),
         
          child: Row(
           
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){},
              ),
               IconButton(
                icon: Icon(Icons.find_in_page),
                onPressed: (){},
              ),
               IconButton(
                icon: Icon(Icons.person),
                onPressed: (){},
              ),
              
            ],
          )
        ),
      
    );
  }
}