/*
 LDHashing
 https://github.com/EgoAleSum/LDHashing
 (C) 2014 Alessandro Segala
 License: MIT
 */

#import "NSData+LDHashing.h"

@implementation NSData (LDHashing)

- (NSString*)md5String
{
	char *cStr = malloc(self.length);
	[self getBytes:cStr length:self.length];
	unsigned char *result = LD_MD5(cStr, (CC_LONG)self.length);
	NSString *string = hexString(result, 16);
	free(result);
	return string;
}

- (NSData*)md5Data
{
	char *cStr = malloc(self.length);
	[self getBytes:cStr length:self.length];
	unsigned char *result = LD_MD5(cStr, (CC_LONG)self.length);
	return [NSData dataWithBytesNoCopy:result length:16];
}

- (NSString*)sha1String
{
	char *cStr = malloc(self.length);
	[self getBytes:cStr length:self.length];
	unsigned char *result = LD_SHA1(cStr, (CC_LONG)self.length);
	NSString *string = hexString(result, 20);
	free(result);
	return string;
}

- (NSData*)sha1Data
{
	char *cStr = malloc(self.length);
	[self getBytes:cStr length:self.length];
	unsigned char *result = LD_SHA1(cStr, (CC_LONG)self.length);
	return [NSData dataWithBytesNoCopy:result length:20];
}

- (NSString*)sha256String
{
	char *cStr = malloc(self.length);
	[self getBytes:cStr length:self.length];
	unsigned char *result = LD_SHA256(cStr, (CC_LONG)self.length);
	NSString *string = hexString(result, 32);
	free(result);
	return string;
}

- (NSData*)sha256Data
{
	char *cStr = malloc(self.length);
	[self getBytes:cStr length:self.length];
	unsigned char *result = LD_SHA256(cStr, (CC_LONG)self.length);
	return [NSData dataWithBytesNoCopy:result length:32];
}

@end
