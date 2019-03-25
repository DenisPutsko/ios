#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
   
    int delta = 0;
    
    for ( int i = 0; i <[array count]; i++) {
        NSString * arrayRowString = [array objectAtIndex:i];
        NSArray * rowArray = [arrayRowString componentsSeparatedByString:@" "];
        delta += [rowArray[i] integerValue] - [rowArray[[array count] - 1 - i] integerValue];
    }
    delta = abs(delta);
    
    return @(delta);
}

@end
