//
//  Identical.m
//  NSUnit
//
//  Created by Jackson Harper on 8/21/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import "TheSame.h"
#import "BlockOperation.h"


@implementation TheSame

+ (NSObject<OperationProtocol> *) as:(NSObject *) rvalue
{
    BlockOperation *res = [[BlockOperation alloc] initWithRValue:rvalue andBlock:^(NSObject *l, NSObject *r) {
        if (r == nil && l != nil)
            [NSException raise:@"NSUnitException" format:@"left value is nil, but rvalue is not."];
        if (r != l)
            [NSException raise:@"NSUnitException" format:@"left value '%@' is not the same object as right value '%@'.", l, r];
    }];
    return res;
}

@end
