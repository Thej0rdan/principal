import D "mo:base/Debug";

actor userStore {

  type Gender = {
    #male;
    #female;
  };

  stable var userStore = [
    var {
      var name = "Jordan";
      var age = 09;
      var gender: Gender = #male;
    },
    {
      var name = "Rhodes";
      var age = 19;
      var gender :Gender = #male;
    },
    {
      var name = "Himothy";
      var age = 29;
      var gender : Gender = #male;
    }
  ];

  public shared func updateUser(name:?Text, age:?Nat, gender: ?Gender, index:Nat) : async() {
    switch(name) {
      case(?name) {userStore[index].name := name};
      case (null) {};
    };
    switch(age) {
      case(?age) {userStore[index].age := age };
      case(null) {};
    };
    switch(gender) {
      case(?gender) {userStore[index].gender := gender };
      case(null) {};
    };
  };


};