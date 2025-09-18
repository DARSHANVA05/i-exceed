class Profile {
  String? name;
  String? nickName;

  Profile({String? nickName, String? name}) {
    this.name = name;
    
    //if the value is null the value on the right side variable is assigned.
    this.nickName = nickName ?? name;
  }

  void displayProfileDetails() {
    print("$name is having nickname as $nickName");
  }
}

main() {
  Profile profile1 = Profile(name: "Darshan");
  profile1.displayProfileDetails();

  Profile profile2 = Profile(name: "Erling haaland", nickName: "terminator");
  profile2.displayProfileDetails();
}
