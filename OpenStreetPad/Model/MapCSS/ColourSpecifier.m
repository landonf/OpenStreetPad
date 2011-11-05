//
//  ColourSpecifier.m
//  OpenStreetPad
//
//  Created by Thomas Davie on 31/10/2011.
//  Copyright (c) 2011 Thomas Davie. All rights reserved.
//

#import "ColourSpecifier.h"

@implementation ColourSpecifier

#if TARGET_OS_IPHONE
@synthesize colour;

- (id)initWithSyntaxTree:(CPSyntaxTree *)syntaxTree
{
    self = [super initWithSyntaxTree:syntaxTree];
    
    if (nil != self)
    {
        [self setColour:[[syntaxTree children] objectAtIndex:0]];
    }
    
    return self;
}

- (NSString *)description
{
    CGFloat red;
    CGFloat green; 
    CGFloat blue;
    CGFloat alpha;
    [[self colour] getRed:&red green:&green blue:&blue alpha:&alpha];
    return [NSString stringWithFormat:@"rgba(%1.2f, %1.2f, %1.2f, %1.2f)", red, green, blue, alpha];
}
#endif

@end
