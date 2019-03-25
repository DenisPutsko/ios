#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    
    NSString * s = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSInteger l = [s length];
    int row = floor(sqrt(l));
    int column = ceil(sqrt(l));
    if (row != column) {
        if (row * row >= l) {
            column = row;
        } else if ((row * column < l) && (column * column >= l)) {
            row = column;
        }
    }
   
    NSArray * rowArray = [s componentsSeparatedByString:@""];
   
    
    return @"";
}

@end
