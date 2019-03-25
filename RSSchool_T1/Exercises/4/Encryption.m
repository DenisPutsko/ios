#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
//    NSUInteger length = [string length];
//
//    double lengthSquareRoot = sqrt(length);
//    int rowsCount = (int)floor(lengthSquareRoot);
//    int columnsCount = (int)ceil(lengthSquareRoot);
//
//    if (rowsCount * columnsCount < length) rowsCount++;
//
//    NSMutableString *str = [[NSMutableString alloc] init] ;
//
//    for (int i = 0; i < columnsCount; i++) {
//        for (int j = 0; j < rowsCount; j++) {
//            int index = j * columnsCount + i;
//            if (index < length) {
//                [str appendString:[string substringWithRange:NSMakeRange(index, 1)]];
//            }
//        }
//        if (i < columnsCount - 1) {
//            [str appendString:@" "];
//        }
//    }
//
//    return str;
//    NSMutableString * newString = [NSMutableString init];
//    NSString * s = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSInteger l = [string length];
    int row = floor(sqrt(l));
    int column = ceil(sqrt(l));
    if (row*column< l) {
        row++;
    }

    
    NSMutableString *newString = [[NSMutableString alloc] init] ;
//
    for (int i = 0; i < column; i++) {
        for (int j = 0; j < row; j++) {
            int index = j * column + i;
            if (index < l) {
                [newString appendString:[string substringWithRange:NSMakeRange(index, 1)]];
            }
        }
        if (i < column - 1) {
            [newString appendString:@" "];
        }
    }
//
//
    return newString;
}

@end
