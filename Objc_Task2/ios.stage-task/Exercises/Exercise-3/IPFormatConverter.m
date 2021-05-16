#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (!numbersArray || numbersArray.count == 0) {
        return @"";
    }
    NSMutableArray <NSString *> * array = [NSMutableArray arrayWithArray:@[]];
    for (int i = 0; i < numbersArray.count && i < 4; i++) {
        NSNumber* x = (NSNumber*)numbersArray[i];
        if (x.doubleValue < 0){
            return @"Negative numbers are not valid for input.";
        } else if (x.doubleValue > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else {
            [array addObject:x.stringValue];
        }
    }
    while (array.count < 4) {
        [array addObject:@"0"];
    }
    return [array componentsJoinedByString:@"."];
}

@end
