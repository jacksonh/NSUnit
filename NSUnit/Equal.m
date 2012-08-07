//
//  Equal.m
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import "Equal.h"
#import "BlockOperation.h"

@implementation Equal

+ (NSObject<OperationProtocol> *) to:(NSObject *) rvalue
{
    BlockOperation *res = [[BlockOperation alloc] initWithRValue:rvalue andBlock:^(NSObject *l, NSObject *r) {
        if (r == nil && l != nil)
            [NSException raise:@"NSUnitException" format:@"left value is equal to nil, but rvalue is not."];
        if (![r isEqual:l])
            [NSException raise:@"NSUnitException" format:@"left value '%@' does not match right value '%@'.", l, r];
    }];
    return res;
}

@end
