String imagePath = "assets/images/";
String piecesPath = "assets/pieces/";

String f1 = "f1.jpg";
String n1 =
    "https://www.metoffice.gov.uk/binaries/content/gallery/metofficegovuk/hero-images/advice/maps-satellite-images/satellite-image-of-globe.jpg";
String n2 = "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg";
String dashGif = "https://cdn.dribbble.com/users/941326/screenshots/8977728/media/d8d87cc990182d7dcafbde71fdf1d02b.gif";
String fireGif = "https://thumbs.gfycat.com/AbandonedAnguishedCatfish-size_restricted.gif";

List allImages = List.generate(4, (index) => "f${index + 1}.jpg");

List<String> names = List.generate(26, (index) => "${String.fromCharCode(97 + index)}.png");