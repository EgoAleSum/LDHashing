/*
 LDHashing
 https://github.com/EgoAleSum/LDHashing
 (C) 2014 Alessandro Segala
 License: MIT
 */

#import <Foundation/Foundation.h>

#import "LDHashingFunctions.h"


@interface NSString (LDHashing)

- (NSString*)md5String;
- (NSData*)md5Data;

- (NSString*)sha1String;
- (NSData*)sha1Data;

- (NSString*)sha256String;
- (NSData*)sha256Data;

@end
