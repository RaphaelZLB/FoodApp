import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/Models/FoodInfo.dart';
import 'package:food_app/Views/widgets/FoodCard.dart';
import '../Controllers/FoodController.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FoodController controller = FoodController();
  bool _isLoading = true;
  late List<FoodInfo> _foods;

  @override
  void initState() {
    super.initState();
    getFoods();
  }

  Future<void> getFoods() async {
    _foods = await controller.foods;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(
                'What would you like to eat today?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster', // Choose a more elegant font family like 'Cursive' or 'Pacifico'
                  foreground: Paint()..shader = LinearGradient(
                    colors: <Color>[
                      Colors.teal,
                      Colors.black,
                    ],
                  ).createShader(Rect.fromLTWH(110.0, 150.0, 150.0, 70.0)), // Gradient effect
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.black26, // Subtle shadow for depth
                    ),
                  ],
                ),
                textAlign: TextAlign.center, // Align text to center if needed
              ),
          
              // _isLoading ? Center(child: CircularProgressIndicator())     :
          
          
              FoodCard(
                  name: 'rafffi',
                  price:'2.99',
                  // cover_photo: "",
                ),
          
              FoodCard(
                name: 'rafffi',
                price:'2.99',
                // cover_photo: "",
              ),
              FoodCard(
                name: 'rafffi',
                price:'2.99',
                // cover_photo: "",
              ),
              FoodCard(
                name: 'rafffi',
                price:'2.99',
                // cover_photo: "",
              ),
          
          
            ],
          ),
        ),
      ),
    );
  }
}