class SingletonData {
  SingletonData.internal();
  static final _singleton = SingletonData.internal();

  String title = '';

  void clearList() {
    title = '';
  }

  factory SingletonData() {
    return _singleton;
  }
}