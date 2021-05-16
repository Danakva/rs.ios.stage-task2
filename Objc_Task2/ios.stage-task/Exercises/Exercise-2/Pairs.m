#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int count = 0;
    for (int i = 0; i < array.count; i++) {
        for (int a = i + 1; a < array.count; a++) {
            double dif = array[i].doubleValue - array[a].doubleValue;
            double differ = dif < 0 ? dif * -1 : dif;
            if (differ == number.doubleValue) {
                count++;
            }
        }
    }
    return count;
}

@end
