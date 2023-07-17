import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Potrait();
      } else {
        return Landscape();
      }
    },
    ));
  }
    
  }
class NewsArticle {
  final String imageUrl;

  NewsArticle({required this.imageUrl});
}




  
  class Potrait extends StatefulWidget {
    const Potrait({Key? key}) : super(key: key);
  
    @override
    State<Potrait> createState() => _PotraitState();
  }

  
  class _PotraitState extends State<Potrait> {

    final List<NewsArticle> news = [
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      // Add more articles as needed
    ];

    @override
    Widget build(BuildContext context) {
      return Container(
        child: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
           children: [
               Container(
                   width: 150,
                   height: 150,
                   child: Image.network(
                     news[index].imageUrl,
                   )),
             Divider(
               color: Colors.black,
             )
           ],
              ),
            );

          }

        ),
      );
    }
  }


  
  
  class Landscape extends StatefulWidget {
    const Landscape({Key? key}) : super(key: key);


  
    @override
    State<Landscape> createState() => _LandscapeState();
  }
  
  class _LandscapeState extends State<Landscape> {
    final List<NewsArticle> news = [
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      NewsArticle(imageUrl: 'https://northyorkshireccg.nhs.uk/wp-content/uploads/2021/02/150x150.png'),
      // Add more articles as needed
    ];
    @override
    Widget build(BuildContext context) {
      return  Container(
        child: ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Container(
                            width: 150,
                            height: 150,
                            child: Image.network(
                              news[index].imageUrl,
                            )),
                      ),
                     
                      const VerticalDivider(
                        color: Colors.black,
                      ),
                      
                      Container(
                          width: 150,
                          height: 150,
                          child: Image.network(
                            news[index].imageUrl,
                          )),

                    ],
                  ),
                ),
              );

            }

        ),
      );;
    }
  }
  
  



