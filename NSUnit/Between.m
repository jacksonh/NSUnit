//
//  Between.m
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import "Between.h"
#import "BlockOperation.h"


@implementation Between

+ (NSObject<OperationProtocol> *) low:(NSNumber *) low and:(NSNumber *) high;
{
    BlockOperation *res = [[BlockOperation alloc] initWithRValue:nil andBlock:^(NSObject *l, NSObject *r) {
        if (l == nil)
            [NSException raise:@"NSUnitException" format:@"left value is nil."];
        if (low == nil)
            [NSException raise:@"NSUnitException" format:@"low value is nil."];
        if (high == nil)
            [NSException raise:@"NSUnitException" format:@"high value is nil."];
        
        if (![l isKindOfClass:[NSNumber class]])
            [NSException raise:@"NSUnitException" format:@"left value is not a number."];
        
        int result;
        NSNumber *lnum = (NSNumber *) l;
        NSNumber *lownum = (NSNumber *) low;
        NSNumber *highnum = (NSNumber *) high;
        
        result = [lnum compare:lownum];
        if (result == -1)
            [NSException raise:@"NSUnitException" format:@"lvalue '%@' is less than low value '%@'.", lnum, lownum];
        
        result = [lnum compare:highnum];
        if (result == 1)
            [NSException raise:@"NSUnitException" format:@"lvalue '%@' is greater than high value '%@'.", lnum, highnum];
        
    }];
    return res;
}

@end
