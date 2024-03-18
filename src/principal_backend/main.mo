import P "mo:base/Principal";
actor Echo {

  type Result = {
    #ok : Principal
    #err : Text;
  };

  public shared (msg) func getPrincipal() : async Principal{
    let anonymous_principal = P.fromText("2vsxx-fae");
    let {caller=callerPrincipal} = msg;
    if (callerPrincipal == anonymous_principal) {
      return "ID cannot be anonymous. Please login to continue.";
    } else {
      return callerPrincipal;
    };
  };
};