import 'package:flutter/material.dart';
import 'package:nug/profilemodel.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/279574/pexels-photo-279574.jpeg?auto=compress&cs=tinysrgb&w=600',
                            ))),
                  ),
                  Positioned(
                    top: 280,
                    left: 130,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 288,
                    left: 140,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg/330px-Tom_Cruise_by_Gage_Skidmore_2.jpg'))),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tom Cruise',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
                Text('tomcruise@gmail.com'),
              ],
            ),
            Container(
              height: 50,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 30,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.image_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.people_alt_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pp.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      child: Column(
                        children: [
                          Container(
                            height:80,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:pp[index]['image']),

                            ),
                          ),
                          Text(pp[index]['name'])
                        ],
                      ),

                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'My Favourite',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount:cc.length,
                  itemBuilder: (context,index){
                    return  Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: cc[index]['image'],
                                      fit: BoxFit.cover)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(cc[index]['place'],style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),),
                                    Icon(cc[index]['icon'],
                                      color: Colors.redAccent,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
