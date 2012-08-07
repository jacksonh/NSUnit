//
//  NumberComparisonOperation.m
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import "NumberComparisonOperation.h"

@implementation NumberComparisonOperation


- (id) initWithRValue:(NSObject *) rvalue andAllowedComparisonValues:(NSArray *) allowed;
{
    self = [super initWithRValue:rvalue andBlock:^(NSObject *l, NSObject *r) {
        if (l == nil)
            [NSException raise:@"NSUnitException" format:@"left value is nil."];
        if (r == nil)
            [NSException raise:@"NSUnitException" format:@"right value is nil."];
        
        if (![l isKindOfClass:[NSNumber class]])
            [NSException raise:@"NSUnitException" format:@"left value is not a number."];
        
        NSNumber *lnum = (NSNumber *) l;
        NSNumber *rnum = (NSNumber *) r;
        int result = [lnum compare:rnum];
        if (![_allowed containsObject:[NSNumber numberWithInt:result]])
            [NSException raise:@"NSUnitException" format:@"left value '%@' is not less than right value '%@' (result: %d).", lnum, rnum, result];
    }];

    if (self) {
        _allowed = allowed;
    }
    return self;
}


@end
