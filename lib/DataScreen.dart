import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  dynamic country,flag,code,sport;
  Data(this.country, this.flag,this.code,this.sport);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  bool vis = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Country Data"),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 55,top: 15),
                    child: Container(
                      height: 150,
                      width: 292,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 25
                          )
                        ],
                        shape: BoxShape.circle
                      ),
                      alignment: Alignment.center,
                      child: Image.asset("${widget.flag}"),
                    ),
                  ),
                  SizedBox(height: 21,),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            vis = !vis;
                          });
                        },
                        child: Text("Click To Show Data"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Visibility(
                    visible: vis,
                    child: Padding(
                      padding: EdgeInsets.only(left: 55,),
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 20
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                            "Country : ${widget.country}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Visibility(
                    visible: vis,
                    child: Padding(
                      padding: EdgeInsets.only(left: 55,),
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 20
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Code : ${widget.code}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Visibility(
                    visible: vis,
                    child: Padding(
                      padding: EdgeInsets.only(left: 55,),
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 20
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Sports : ${widget.sport}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}
