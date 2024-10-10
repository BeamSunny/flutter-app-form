class Travel {
  String imageURL;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Travel(
      {required this.imageURL,
      required this.country,
      required this.city,
      required this.activities,
      required this.description});
}

class Activity {
  String imageURL;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  Activity(
      {required this.imageURL,
      required this.name,
      required this.type,
      required this.startTimes,
      required this.rating,
      required this.price});
}

List<Activity> activities = [
  Activity(
      imageURL: "",
      name: "name",
      type: "type",
      startTimes: ["9:00 am"],
      rating: 5,
      price: 400),
  Activity(
      imageURL: "",
      name: "name",
      type: "type",
      startTimes: ["9:00 am"],
      rating: 5,
      price: 400)
];

List<Travel> travel = [
  Travel(
      imageURL:
          "https://images.hl.uk/vvl3z0p6qtad/hnUbr86GctS480GVFiDU1/a6430dcf5b9747615f7e95f43d775ef5/Tokyo_skyline_aerial_view__Japan-_GettyImages.jpg?w=3840",
      country: "Japan",
      city: "Tokyo",
      activities: activities,
      description: "Japan is an island country in East Asia."),
  Travel(
      imageURL:
          'https://pullman.accor.com/destinations/country/thailand-1400x788-1.jpg',
      country: "Thailand",
      city: "Phuket",
      activities: activities,
      description: "Phuket is an island country in East Asia."),
  Travel(
      imageURL:
          'https://www.entriva.com/wp-content/uploads/2023/06/vietnam4.jpeg',
      country: "Vietnam",
      city: "Vietnam",
      activities: activities,
      description: "Vietnam is an island country in East Asia."),
];

class Hotel {
  String imageURL;
  String description;
  int price;
  int rating;

  Hotel(
      {required this.imageURL,
      required this.description,
      required this.price,
      required this.rating});
}

List<Hotel> hotels = [
  Hotel(imageURL: "", description: "description", price: 100, rating: 5)
];
