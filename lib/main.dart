import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Flutter',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 150, 135),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildImage(String url, {double height = 200}) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const Center(child: Text('Gambar gagal dimuat'));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Memahami lebih dalam tentang (AI)',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 255, 255, 255),
            shadows: const [
              Shadow(
                offset: Offset(1.5, 1.5),
                blurRadius: 3,
                color: Colors.black26,
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 38, 172, 255),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Memahami cara kerja AI',
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            Text(
              'Kecerdasan Artifisial',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                shadows: const [
                  Shadow(
                    offset: Offset(1.5, 1.5),
                    blurRadius: 3,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            buildImage(
              'https://media.istockphoto.com/id/1976099664/id/foto/konsep-prosesor-kecerdasan-buatan-array-data-besar-ai.jpg?s=612x612&w=is&k=20&c=IwbOCaCbQq6CjBZDoFjKYJGW01NjEVdvow-CWYkUqYI=',
              height: 200,
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        'https://media.istockphoto.com/id/2107612972/id/foto/apa-itu-ai-konsep.jpg?s=1024x1024&w=is&k=20&c=RVsPUjLpVyz2Pr0N4chrF3ij5__rovGanADjVGEXN9c=',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text('Gambar gagal dimuat'),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        'https://media.istockphoto.com/id/1469706455/id/foto/wanita-bisnis-pekerjaan-seo-komputer-dan-pengkodean-karyawan-muda-dengan-kripto-dan-kacamata.jpg?s=612x612&w=is&k=20&c=y-tvnzjj2Ypxdr-7Ictn-aMKLEVx9YJ_IEdNufC0p5s=',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text('Gambar gagal dimuat'),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            buildImage(
              'https://media.istockphoto.com/id/1515913422/id/foto/seorang-analis-data-menggunakan-teknologi-ai-untuk-alat-kerja-untuk-analisis-data-chatbot-chat.jpg?s=1024x1024&w=is&k=20&c=FlNd8-Y6H8wg6RcRFUaWU2-vFY3fPObF6qm-L-eLq-U=',
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
