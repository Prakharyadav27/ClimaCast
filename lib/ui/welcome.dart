import 'package:clima_cast/models/city.dart';
import 'package:clima_cast/models/constants.dart';
import 'package:clima_cast/ui/homePage.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    List<City> cities =
        City.citiesList.where((City) => City.isDefault == false).toList();
    List<City> selectedCities = City.getSelectedCities();

    Constants myConstants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: myConstants.secondaryColor,
        title: Text(
          selectedCities.length.toString() + " selected",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 10, top: 20, right: 10),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: size.height * .08,
            width: size.width,
            decoration: BoxDecoration(
                border: cities[index].isSelected == true
                    ? Border.all(
                        color: myConstants.secondaryColor.withOpacity(.6),
                        width: 2)
                    : Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: myConstants.primaryColor.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ]),
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    cities[index].isSelected = !cities[index].isSelected;
                  });
                },
                child: Image.asset(
                  cities[index].isSelected == true
                      ? 'assets/checked.png'
                      : 'assets/unchecked.png',
                  width: 30,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                cities[index].city,
                style: TextStyle(
                  fontSize: 16,
                  color: cities[index].isSelected == true
                      ? myConstants.primaryColor
                      : Colors.black54,
                ),
              )
            ]),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          backgroundColor: myConstants.secondaryColor,
          child: const Icon(
            Icons.pin_drop,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
