const String imagePath = "assets/images";
const String jsonPath = "assets/json";
const String iconsPath = "assets/icons";
const String svgPath = "assets/svg_images";

abstract class ImageAssets {
  static const String rate = "$imagePath/rate.png";
}

abstract class IconsAssets {
  static const String _icCart = "$iconsPath/ic_cart.png";
  static const String _icHeart = "$iconsPath/heart.png";
  static const String _icClickedHeart = "$iconsPath/clicked_heart.png";

  static String get icCart => _icCart;

  static String get icHeart => _icHeart;

  static String get icClickedHeart => _icClickedHeart;
}

class JsonAssets {
  static const String loading = "$jsonPath/loading.json";
  static const String error = "$jsonPath/error.json";
  static const String empty = "$jsonPath/empty.json";
  static const String success = "$jsonPath/success.json";
}
