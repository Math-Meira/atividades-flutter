class Food {
  String name;
  String url;
  String number;
  bool favorite;
  int quantity;

  Food({this.name, this.url, this.number}) {
    this.favorite = false;
    this.quantity = 0;
  }
}

class ImgFood {
  String salmon =
      "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_1280.jpg";
  String beef =
      "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_1280.jpg";
  String pizza =
      "https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183_1280.jpg";
  String eclair =
      "https://cdn.pixabay.com/photo/2018/05/01/18/21/eclair-3366430_1280.jpg";
}
