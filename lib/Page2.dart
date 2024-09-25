import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("MY Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Avatar bagian atas
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Aufa As'ad Atsal Fs",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            // Kartu 'About'
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: const Color(0xFFFCDC8D),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Saya adalah seorang Junior Backend Developer yang antusias dengan pengembangan aplikasi sisi server. Meskipun masih berada di tahap awal karier, saya memiliki dasar yang kuat dalam membangun dan mengoptimalkan backend, serta telah berpengalaman dalam mengembangkan RESTful APIs dan bekerja dengan teknologi seperti PHP (Laravel), Node.js, dan Python.",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            // Kartu 'History'
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pendidikan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Vocational High School Student at SMK Wikrama Bogor",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            // Kartu 'Skill' sesuai dengan gambar
            SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skill",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18, 
                          // backgroundColor: Color(0xFFFCDC8D)
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "MYSQL",
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Laravel",
                    ),
                    SizedBox(height: 30),
                    Text(
                      "PHP",
                    ),
                  ],
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}