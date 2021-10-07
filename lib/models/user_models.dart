class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotoURl;

  var token;
   
  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePhotoURl,
    this.token,
  });

  UserModel.fromJson(Map<String,dynamic> json){
    id = json ['id'];
    name = json ['name'];
    email = json ['email'];
    username = json ['username'];
    profilePhotoURl = json ['profile_photo_url'];
    token = json ['token'];
  }
  
  Map<String, dynamic> toJason() {
    return {
      'id': id,
      'name': name,
      'email' : email,
      'username':username,
      'profile_photo_url': profilePhotoURl,
      'token': token,
    };
  }
}