import 'package:flutter/material.dart';

void main() => runApp(ProjectKisanApp());

class ProjectKisanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Kisan',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Project Kisan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiseaseDiagnosisScreen()),
                );
              },
              child: Text('📷 Diagnose Crop Disease'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MarketPricesScreen()),
                );
              },
              child: Text('📊 Check Market Prices'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SchemeNavigatorScreen()),
                );
              },
              child: Text('📜 Govt. Schemes in Kannada'),
            ),
          ],
        ),
      ),
    );
  }
}

class DiseaseDiagnosisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diagnose Disease')),
      body: Center(
        child: Text('Upload image to detect crop disease.'),
      ),
    );
  }
}

class MarketPricesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Market Prices')),
      body: Center(
        child: Text('View real-time mandi prices for your crops.'),
      ),
    );
  }
}

class SchemeNavigatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Govt. Schemes')),
      body: Center(
        child: Text('Explore agriculture schemes in Kannada.'),
      ),
    );
  }
}
