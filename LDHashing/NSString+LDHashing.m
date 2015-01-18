/*
 LDHashing
 https://github.com/EgoAleSum/LDHashing
 (C) 2014 Alessandro Segala
 License: MIT
 */

#import "NSString+LDHashing.h"

@implementation NSString (LDHashing)

- (NSString*)md5String
{
	const char *cStr = [self UTF8String];
	unsigned char *result = LD_MD5(cStr, (CC_LONG)self.length);
	NSString *string = hexString(result, 16);
	free(result);
	return string;
}

- (NSData*)md5Data
{
	const char *cStr = [self UTF8String];
	unsigned char *result = LD_MD5(cStr, (CC_LONG)self.length);
	return [NSData dataWithBytesNoCopy:result length:16];
}

- (NSString*)sha1String
{
	const char *cStr = [self UTF8String];
	unsigned char *result = LD_SHA1(cStr, (CC_LONG)self.length);
	NSString *string = hexString(result, 20);
	free(result);
	return string;
}

- (NSData*)sha1Data
{
	const char *cStr = [self UTF8String];
	unsigned char *result = LD_SHA1(cStr, (CC_LONG)self.length);
	return [NSData dataWithBytesNoCopy:result length:20];
}

- (NSString*)sha256String
{
	const char *cStr = [self UTF8String];
	unsigned char *result = LD_SHA256(cStr, (CC_LONG)self.length);
	NSString *string = hexString(result, 32);
	free(result);
	return string;
}

- (NSData*)sha256Data
{
	const char *cStr = [self UTF8String];
	unsigned char *result = LD_SHA256(cStr, (CC_LONG)self.length);
	return [NSData dataWithBytesNoCopy:result length:32];
}

@end
