import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.shopping_bag, color: Colors.blue),
        title: Text('Products', style: TextStyle(color: Colors.blue)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[
            Colors.white,
            Colors.white,
          ])),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAC4APQMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAABQEGAgMEB//EAC4QAAICAQIFAQYHAQAAAAAAAAECAAMRBCEFEjFBUXEGE1JhgaEUIzIzQpHhIv/EABoBAQEAAwEBAAAAAAAAAAAAAAUEAQMGAgD/xAAjEQACAgEDAwUAAAAAAAAAAAAAAQIDIQQRMRITQQUiMmHR/9oADAMBAAIRAxEAPwCyoxRgyHDDoY30uoW9OwcdRE8yrdq3DocETl5w6kc7Tc639D5ULZ5VJx4ELFItPwYCgY7jrFfEOIWUMdMMV2t7vb553X+p0cL4lXr6bQa7UtoyWBAAI8jyfMrXptnZ3XyYwsnVCQjLYi2VksjDKnBGR6GZQqUXF9L5MEQkwmD4QSQcHI6iRCXAJXvaL2jtr4kWu0NyPUQr2qpNTg/pbm7b469D52Me+z3FKb7abqbCtg9MkfCfr2+UzcKyFHAZWGCD0Iiz8Nw7Sar8fo6lS6tPd6mpDuo7Py+CAN/9juk1Xe9sllC2n1ErHnkuVSqFtdFVa3IYhRj8zvgZ6YJPbcZ7yZp4Pq63qrsFvOLV5+Vmzsdht6D7zqvrCtzJ+g9PlIPVdI9+9BY8/pU15NcIQgZ5EEIZhmXAJhYcAxJxGum1yXTD9rFPKw+o3jxgCJwarSq++Ztql0vc3VS2YjOr4lptd76i8aisuF5f2mRAAAc7gnA3yPTxL3w3jNNmkCWs7WN/JiCB9pT7tKF6Ga6Lm074B/5J6S63U22VuG/IjXbnJ6Gjq4yrAzKVXS6+xCBvHFGuZ0yQYHKlxKGj/9k="),
                  title: Text(
                    "Brand new shoes",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(children: [
                    Text(
                      "SH-231",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("Stock 12", style: TextStyle(color: Colors.white)),
                    )
                  ]),
                  trailing: Icon(Icons.delete, color: Colors.red),
                ));
          }),
      floatingActionButton: FloatingActionButton.extended(icon: Icon(Icons.shopping_bag), label: Text('New Product'), onPressed: () {}),
    );
  }
}
