/*
 LDHashing
 https://github.com/EgoAleSum/LDHashing
 (C) 2014 Alessandro Segala
 License: MIT
 */

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

// Note: returned value needs to be free()'d
inline __attribute__((always_inline)) unsigned char* LD_MD5(const char *cStr, CC_LONG len)
{
	unsigned char *result = malloc(CC_MD5_DIGEST_LENGTH);
	CC_MD5(cStr, len, result);
	return result;
}

// Note: returned value needs to be free()'d
inline __attribute__((always_inline)) unsigned char* LD_SHA1(const char *cStr, CC_LONG len)
{
	unsigned char *result = malloc(CC_SHA1_DIGEST_LENGTH);
	CC_SHA1(cStr, len, result);
	return result;
}

// Note: returned value needs to be free()'d
inline __attribute__((always_inline)) unsigned char* LD_SHA256(const char *cStr, CC_LONG len)
{
	unsigned char *result = malloc(CC_SHA256_DIGEST_LENGTH);
	CC_SHA256(cStr, len, result);
	return result;
}

NSString *hexString(const unsigned char *dataBuffer, NSUInteger bytesCount);
