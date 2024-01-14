class City {
  bool isSelected;
  final bool isDefault;
  final String city;
  final String country;

  City(
      {required this.isSelected,
      required this.isDefault,
      required this.city,
      required this.country});

  //List of Cities data
  static List<City> citiesList = [
    City(
        isSelected: false,
        city: 'London',
        country: 'United Kindgom',
        isDefault: false),
    City(isSelected: false, city: 'Tokyo', country: 'Japan', isDefault: false),
    City(isSelected: false, city: 'Delhi', country: 'India', isDefault: true),
    City(
        isSelected: false, city: 'Beijing', country: 'China', isDefault: false),
    City(isSelected: false, city: 'Paris', country: 'Paris', isDefault: false),
    City(isSelected: false, city: 'Rome', country: 'Italy', isDefault: false),
    City(
      isSelected: false,
      city: 'Lagos',
      country: 'Nigeria',
      isDefault: false,
    ),
    City(
        isSelected: false,
        city: 'Amsterdam',
        country: 'Netherlands',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Barcelona',
        country: 'Spain',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Miami',
        country: 'United States',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Vienna',
        country: 'Austria',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Berlin',
        country: 'Germany',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Toronto',
        country: 'Canada',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Brussels',
        country: 'Belgium',
        isDefault: false),
    City(
        isSelected: false, city: 'Nairobi', country: 'Kenya', isDefault: false),
  ];

  // Get the Selected cities
  static List<City> getSelectedCities() {
    List<City> selectedcities = City.citiesList;
    return selectedcities.where((city) => city.isSelected == true).toList();
  }
}
