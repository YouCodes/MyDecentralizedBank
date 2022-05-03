import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor MyBank{
  stable var currentValue: Float = 1500;
  let otherValue = 12903812030;
  // currentValue := 1;
  stable var startTime = Time.now();
  // startTime := Time.now();
  // Debug.print(debug_show(startTime));

  public func getMore(amount: Float) {
  currentValue += amount;
  Debug.print(debug_show(currentValue));
  };

  public func takeAway(amount: Float) {
    let tempValue: Float = currentValue - amount;
    if(tempValue >=0) {
  currentValue -= amount;
  Debug.print(debug_show(currentValue));
    }
    else {
      Debug.print("Error");
    }
  };

  public query func checkMyBalance(): async Float {
    return currentValue;
  };

  public func compoundInterest() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS/1000000000;
    currentValue := currentValue*(1.01** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  }

}