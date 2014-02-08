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
    if (self.length > 0) {
        NSMutableArray *components = [NSMutableArray arrayWithArray:[self componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet] invertedSet]]];
        NSMutableString *phoneNumber = [NSMutableString stringWithString:[components componentsJoinedByString:@""]];
        if (phoneNumber.length > 0) {
            if ([[phoneNumber substringToIndex:1] isEqualToString:@"1"]) {
                [phoneNumber deleteCharactersInRange:NSMakeRange(0, 1)];
            }
            return phoneNumber;
        } else {
            return @"";
        }
    }

    return @"";
}

@end
