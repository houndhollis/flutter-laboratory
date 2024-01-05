class SingletonData {
  SingletonData.internal();
  static final _singleton = SingletonData.internal();

  List listObjects = [];

  void clearList() {
    listObjects.clear();
  }

  factory SingletonData() {
    return _singleton;
  }
}