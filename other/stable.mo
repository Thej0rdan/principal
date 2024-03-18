import P "mo:base/Principal";
actor Echo{

  stable var numberToCountFrom = 0;
  var numberNotStable = 0;

  public shared func intCounter(number:Nat): async(){
    numberToCountFrom := number;
    numberNotStable := number;
  };

  public shared func countUp(): async(){
    numberToCountFrom := numberToCountFrom + 1;
  };

  public shared func countDown(): async(){
    numberToCountFrom := numberToCountFrom - 1;
  };

  public query func getCurrentNumber(): async(){
    numberToCountFrom := numberToCountFrom ;
  };

  
};

