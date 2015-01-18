/*
 LDHashing
 https://github.com/EgoAleSum/LDHashing
 (C) 2014 Alessandro Segala
 License: MIT
 */

#import "LDHashingFunctions.h"

NSString *hexString(const unsigned char *dataBuffer, NSUInteger bytesCount)
{
	if(bytesCount)
	{
		const char *hexChars = "0123456789abcdef";
		char *chars = malloc(sizeof(char) * (bytesCount * 2 + 1));
		char *s = chars;
		for(unsigned i = 0; i < bytesCount; ++i)
		{
			*s++ = hexChars[((*dataBuffer & 0xF0) >> 4)];
			*s++ = hexChars[(*dataBuffer & 0x0F)];
			dataBuffer++;
		}
		*s = '\0';
		NSString *hexString = [NSString stringWithUTF8String:chars];
		free(chars);
		return hexString;
	}
	
	return @"";
}
