// import 'package:flutter/material.dart';
//
// void main() => runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     )
// );
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             height: 120,
//             padding: const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Colors.grey[200]
//                     ),
//                     child:const TextField(
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.search, color: Colors.grey,),
//                         border: InputBorder.none,
//                         hintStyle: TextStyle(color: Colors.grey),
//                         hintText: "Search",
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 20,),
//                 Icon(Icons.camera_alt, color: Colors.grey[800], size: 30,)
//               ],
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.baseline,
//                       textBaseline: TextBaseline.alphabetic,
//                       children: <Widget>[
//                         Text("Stories", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 22, letterSpacing: 1.2),),
//                         const Text("See Archive"),
//                       ],
//                     ),
//                     const SizedBox(height: 20,),
//                      Container(
//                       height: 180,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         children: <Widget>[
//                           makeStory(
//                               storyImage: 'assets/images/story/Noman.jpg',
//                               userImage: 'assets/images/story/Noman1.png',
//                               userName: 'Noman Tariq'
//                           ),
//                           makeStory(
//                               storyImage: 'assets/images/story/Friend1.jpg',
//                               userImage: 'assets/images/story/Mubarak.jpg',
//                               userName: 'Mubarak Ali'
//                           ),
//                           makeStory(
//                               storyImage: 'assets/images/story/Friend2.jpg',
//                               userImage: 'assets/images/story/Umar.jpg',
//                               userName: 'Umer Abdullah'
//                           ),
//                           makeStory(
//                               storyImage: 'assets/images/story/Bilal1.jpg',
//                               userImage: 'assets/images/story/Bilal.jpg',
//                               userName: 'Bilal Khan'
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 40,),
//                     makeFeed(
//                         userName: 'Noman Tariq',
//                         userImage: 'assets/images/story/Noman1.png',
//                         feedTime: '1 hr ago',
//                         feedText: 'Group Photo.',
//                         feedImage: 'assets/images/story/group.jpg'
//                     ),
//                     makeFeed(
//                         userName: 'Mubarak Ali',
//                         userImage: 'assets/images/story/Mubarak.jpg',
//                         feedTime: '3 mins ago',
//                         feedText: "Mubarak Ali is a full stack developer based in Haripur. With expertise in both front-end and back-end technologies, Mubarak is adept at creating comprehensive web applications. His skills span across various programming languages and frameworks, allowing him to build dynamic and responsive user interfaces as well as robust server-side functionalities. Passionate about leveraging technology to solve real-world problems, Mubarak continually seeks to enhance his knowledge and stay updated with the latest industry trends.",
//                         feedImage: ''
//                     ),
//                     makeFeed(
//                         userName: 'Mubarak Ali',
//                         userImage: 'assets/images/story/Mubarak.jpg',
//                         feedTime: '3 mins ago',
//                         feedText: "Real Friendship Never Die❣",
//                         feedImage: 'assets/images/story/friend.jpg'
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//
//   Widget makeStory({storyImage, userImage, userName}) {
//     return AspectRatio(
//       aspectRatio: 1.6 / 2,
//       child: Container(
//         margin:const EdgeInsets.only(right: 10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           image: DecorationImage(
//               image: AssetImage(storyImage),
//               fit: BoxFit.cover
//           ),
//         ),
//         child: Container(
//           padding:const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               gradient: LinearGradient(
//                   begin: Alignment.bottomRight,
//                   colors: [
//                     Colors.black.withOpacity(.9),
//                     Colors.black.withOpacity(.1),
//                   ]
//               )
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(color: Colors.white, width: 2),
//                     image: DecorationImage(
//                         image: AssetImage(userImage),
//                         fit: BoxFit.cover
//                     )
//                 ),
//               ),
//               Text(userName, style: const TextStyle(color: Colors.white),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
//     return Container(
//       margin:const EdgeInsets.only(bottom: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                             image: AssetImage(userImage),
//                             fit: BoxFit.cover
//                         )
//                     ),
//                   ),
//                   const SizedBox(width: 10,),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
//                       const SizedBox(height: 3,),
//                       Text(feedTime, style:const TextStyle(fontSize: 15, color: Colors.grey),),
//                     ],
//                   )
//                 ],
//               ),
//               IconButton(
//                 icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
//                 onPressed: () {},
//               )
//             ],
//           ),
//           const SizedBox(height: 20,),
//           Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
//           const SizedBox(height: 20,),
//           feedImage != '' ?
//           Container(
//             height: 200,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                     image: AssetImage(feedImage),
//                     fit: BoxFit.cover
//                 )
//             ),
//           ) : Container(),
//           const SizedBox(height: 20,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   makeLike(),
//                   Transform.translate(
//                       offset: const Offset(-5, 0),
//                       child: makeLove()
//                   ),
//                   const SizedBox(width: 5,),
//                   Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
//                 ],
//               ),
//               Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
//             ],
//           ),
//           const SizedBox(height: 20,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               makeLikeButton(isActive: true),
//               makeCommentButton(),
//               makeShareButton(),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget makeLike() {
//     return Container(
//       width: 25,
//       height: 25,
//       decoration: BoxDecoration(
//           color: Colors.blue,
//           shape: BoxShape.circle,
//           border: Border.all(color: Colors.white)
//       ),
//       child: const Center(
//         child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
//       ),
//     );
//   }
//
//   Widget makeLove() {
//     return Container(
//       width: 25,
//       height: 25,
//       decoration: BoxDecoration(
//           color: Colors.red,
//           shape: BoxShape.circle,
//           border: Border.all(color: Colors.white)
//       ),
//       child: const Center(
//         child: Icon(Icons.favorite, size: 12, color: Colors.white),
//       ),
//     );
//   }
//   Widget makeLikeButton({isActive}) {
//     return Container(
//       padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade200),
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 16,),
//             const SizedBox(width: 5,),
//             Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
//           ],
//         ),
//       ),
//     );
//   }
//   Widget makeCommentButton() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade200),
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: const Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(Icons.chat, color: Colors.grey, size: 16),
//             SizedBox(width: 5,),
//             Text("Comment", style: TextStyle(color: Colors.grey),)
//           ],
//         ),
//       ),
//     );
//   }
//   Widget makeShareButton() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade200),
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: const Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(Icons.share, color: Colors.grey, size: 16),
//             SizedBox(width: 5,),
//             Text("Share", style: TextStyle(color: Colors.grey),)
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _openCamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      // Do something with the captured image, like displaying it or saving it
      print('Image path: ${photo.path}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                GestureDetector(
                  onTap: _openCamera,
                  child: Icon(Icons.camera_alt, color: Colors.grey[800], size: 30,),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text("Stories", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 22, letterSpacing: 1.2),),
                        const Text("See Archive"),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeStory(
                              storyImage: 'assets/images/story/Noman.jpg',
                              userImage: 'assets/images/story/Noman1.png',
                              userName: 'Noman Tariq'
                          ),
                          makeStory(
                              storyImage: 'assets/images/story/Friend1.jpg',
                              userImage: 'assets/images/story/Mubarak.jpg',
                              userName: 'Mubarak Ali'
                          ),
                          makeStory(
                              storyImage: 'assets/images/story/Friend2.jpg',
                              userImage: 'assets/images/story/Umar.jpg',
                              userName: 'Umer Abdullah'
                          ),
                          makeStory(
                              storyImage: 'assets/images/story/Bilal1.jpg',
                              userImage: 'assets/images/story/Bilal.jpg',
                              userName: 'Bilal Khan'
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    makeFeed(
                        userName: 'Noman Tariq',
                        userImage: 'assets/images/story/Noman1.png',
                        feedTime: '1 hr ago',
                        feedText: 'Group Photo.',
                        feedImage: 'assets/images/story/group.jpg'
                    ),
                    makeFeed(
                        userName: 'Mubarak Ali',
                        userImage: 'assets/images/story/Mubarak.jpg',
                        feedTime: '3 mins ago',
                        feedText: "Mubarak Ali is a full stack developer based in Haripur. With expertise in both front-end and back-end technologies, Mubarak is adept at creating comprehensive web applications. His skills span across various programming languages and frameworks, allowing him to build dynamic and responsive user interfaces as well as robust server-side functionalities. Passionate about leveraging technology to solve real-world problems, Mubarak continually seeks to enhance his knowledge and stay updated with the latest industry trends.",
                        feedImage: ''
                    ),
                    makeFeed(
                        userName: 'Mubarak Ali',
                        userImage: 'assets/images/story/Mubarak.jpg',
                        feedTime: '3 mins ago',
                        feedText: "Real Friendship Never Die❣",
                        feedImage: 'assets/images/story/friend.jpg'
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(storyImage),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(userName, style: const TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                      const SizedBox(height: 3,),
                      Text(feedTime, style: const TextStyle(fontSize: 15, color: Colors.grey),),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(height: 20,),
          Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
          const SizedBox(height: 20,),
          feedImage != '' ?
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover
                )
            ),
          ) : Container(),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeLike(),
                  Transform.translate(
                      offset: const Offset(-5, 0),
                      child: makeLove()
                  ),
                  const SizedBox(width: 5,),
                  Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),)
                ],
              ),
              Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 16,),
            const SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 16),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 16),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}
