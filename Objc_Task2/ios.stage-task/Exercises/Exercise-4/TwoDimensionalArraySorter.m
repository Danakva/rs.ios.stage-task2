#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray* numbersArray = [NSMutableArray arrayWithArray:@[]];
    NSMutableArray* stringsArray = [NSMutableArray arrayWithArray:@[]];
    for (NSArray* subArray in array) {
        if (![subArray isKindOfClass:NSArray.class]) {
            return @[];
        }
        if ([subArray.firstObject isKindOfClass : NSNumber.class]) {
            [numbersArray addObjectsFromArray:subArray];
        } else if ([subArray.firstObject isKindOfClass : NSString.class]) {
            [stringsArray addObjectsFromArray:subArray];
        }
    }
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    if (numbersArray.count == 0) {
        return [stringsArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    } else if (stringsArray.count == 0) {
        return [numbersArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    } else {
        return [NSArray arrayWithObjects:[numbersArray sortedArrayUsingDescriptors:@[sortDescriptor]], [stringsArray sortedArrayUsingDescriptors:@[sortDescriptor]], nil];
    }
}

@end
