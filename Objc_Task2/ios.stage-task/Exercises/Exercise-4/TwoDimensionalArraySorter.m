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
    NSSortDescriptor *ascSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSSortDescriptor *desSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    if (numbersArray.count == 0) {
        return [stringsArray sortedArrayUsingDescriptors:@[ascSortDescriptor]];
    } else if (stringsArray.count == 0) {
        return [numbersArray sortedArrayUsingDescriptors:@[ascSortDescriptor]];
    } else {
        return [NSArray arrayWithObjects:[numbersArray sortedArrayUsingDescriptors:@[ascSortDescriptor]], [stringsArray sortedArrayUsingDescriptors:@[desSortDescriptor]], nil];
    }
}

@end
