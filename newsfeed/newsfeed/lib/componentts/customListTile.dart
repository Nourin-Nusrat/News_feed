import 'package:newsfeed/model/article_model.dart';
import 'package:newsfeed/pages/articles_details_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    article: article,
                  )));
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              //let's add the height
              // leading:  Image.network(article.urlToImage!),
              image: DecorationImage(
                  image: NetworkImage(article.urlToImage!),
                  
                  // image : _getImage(article),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text(
              "${article.source?.name}",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            "${article?.title}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    ),
  );
}



// Widget customListTile(Article article, BuildContext context) {
//   return Container(
//     margin: EdgeInsets.all(12.0),
//     padding: EdgeInsets.all(8.0),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(12.0),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black12,
//           blurRadius: 3.0,
//         ),
//       ]
//     ),
//     child: Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage("${article.urlToImage}"),
//             )
//           ),
//         ),
//       ],
//     ),
//   );
// }

// import 'package:newsfeed/model/article_model.dart';
// import 'package:newsfeed/pages/articles_details_page.dart';
// import 'package:flutter/material.dart';

// Widget customListTile(Article article, BuildContext context) {
//   return InkWell(
//     // onTap: () {
//     //   Navigator.push(
//     //       context,
//     //       MaterialPageRoute(
//     //           builder: (context) => ArticlePage(
//     //                 article: article,
//     //               )));
//     // },
//     child: Container(
//       margin: EdgeInsets.all(12.0),
//       padding: EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(12.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 3.0,
//             ),
//           ]),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 200.0,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               //let's add the height

//               image: DecorationImage(
//                   image: NetworkImage(article.urlToImage!), fit: BoxFit.cover),
//               borderRadius: BorderRadius.circular(12.0),
//             ),
//           ),
//           SizedBox(
//             height: 8.0,
//           ),
//           Container(
//             padding: EdgeInsets.all(6.0),
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//             child: Text(
//               "def",
//               // article.source.name,
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 8.0,
//           ),
//           Text(
//             // article.title,
//             "abc",
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16.0,
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }