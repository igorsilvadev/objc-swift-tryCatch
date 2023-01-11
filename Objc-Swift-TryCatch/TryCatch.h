//
//  TryCatch.h

#import <Foundation/Foundation.h>

@interface TryCatch : NSObject

+ (BOOL)tryBlock:(void(^)(void))tryBlock error:(NSError **)error;

@end
