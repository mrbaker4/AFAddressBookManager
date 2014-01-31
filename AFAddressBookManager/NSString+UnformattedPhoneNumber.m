//
//  NSString+UnformattedPhoneNumber.m
//
//  Created by Anders Fogh Eriksen on 09/04/13.
//  Copyright (c) 2013 Anders Eriksen. All rights reserved.
//

#import "NSString+UnformattedPhoneNumber.h"

@implementation NSString (UnformattedPhoneNumber)

- (NSString *)unformattedPhoneNumber
{
    NSCharacterSet *toExclude = [NSCharacterSet characterSetWithCharactersInString:@"/.,()-+ "];
    NSMutableString *phoneNumber = [NSMutableString stringWithString:[[self componentsSeparatedByCharactersInSet:toExclude] componentsJoinedByString:@""]];
    if ([[phoneNumber substringToIndex:1] isEqualToString:@"1"]) {
        [phoneNumber deleteCharactersInRange:NSMakeRange(0, 1)];
    }
    return phoneNumber;
}

@end
