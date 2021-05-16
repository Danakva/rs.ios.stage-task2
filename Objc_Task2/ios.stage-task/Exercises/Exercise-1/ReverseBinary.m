#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    return calculate(n, 0);
}

UInt8 calculate(UInt8 n, UInt8 result) {
    int power = log2(n);
    int newNumber = n - pow(2, power);
    double newResult = result + pow(2, 7 - power);
    return newNumber != 0 ? calculate(newNumber,newResult) : newResult;
}
