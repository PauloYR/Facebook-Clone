class Post {
  String _profile;
  String _name;
  String _image;
  String _location;
  int _comments;
  int _likes;


  Post(this._profile, this._name, this._image,this._location, this._comments, this._likes);

  int get likes => _likes;

  set likes(int value) {
    _likes = value;
  }

  int get comments => _comments;

  set comments(int value) {
    _comments = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get profile => _profile;

  set profile(String value) {
    _profile = value;
  }

  String get location => _location;

  set location(String value){
    _location = value;
  }
}