#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {

    NSString* alphabet = @"abcdefghijklmnopqrstuvwxyz";
    NSString * s = [string lowercaseString];
    s = [s stringByReplacingOccurrencesOfString:@" " withString:@""];
    for (int i = 0; i < [alphabet length]; i++) {
        NSString* letter = [NSString stringWithFormat:@"%c", [alphabet characterAtIndex:i]];
        if (![s containsString:letter] ) {
            return NO;
        }
    }
    return YES;
    
}

@end
