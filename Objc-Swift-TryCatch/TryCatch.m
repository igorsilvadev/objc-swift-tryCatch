//
//  TryCatch.m
//

#import <Foundation/Foundation.h>
#import "TryCatch.h"

@implementation TryCatch : NSObject 

+ (BOOL)tryBlock:(void(^)(void))tryBlock error:(NSError **)error
{
    @try {
        tryBlock ? tryBlock() : nil;
    }
    @catch (NSException *exception) {
        if (error) {
            *error = [NSError errorWithDomain:@"com.something"
                                         code:42
                                     userInfo:@{NSLocalizedDescriptionKey: exception.name}];
        }
        return NO;
    }
    return YES;
}

@end
