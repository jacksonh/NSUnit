//
//  Empty.m
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import "AnEmpty.h"
#import "BlockOperation.h"

@implementation AnEmpty

+ (NSObject<OperationProtocol> *) array
{
    BlockOperation *res = [[BlockOperation alloc] initWithRValue:nil andBlock:^(NSObject *l, NSObject *r) {
        if (l == nil)
            [NSException raise:@"NSUnitException" format:@"left value is nil."];
        if (![l isKindOfClass:[NSArray class]])
            [NSException raise:@"NSUnitException" format:@"left value is not an array."];
        
        NSArray *larray = (NSArray *) l;
        if ([larray count] != 0)
            [NSException raise:@"NSUnitException" format:@"value is not an empty array."];
        
    }];
    return res;
}

+ (NSObject<OperationProtocol> *) string
{
    BlockOperation *res = [[BlockOperation alloc] initWithRValue:nil andBlock:^(NSObject *l, NSObject *r) {
        if (l == nil)
            [NSException raise:@"NSUnitException" format:@"left value is nil."];
        if (![l isKindOfClass:[NSString class]])
            [NSException raise:@"NSUnitException" format:@"left value is not a string."];
        
        NSString *lstring = (NSString *) l;
        if ([lstring length] != 0)
            [NSException raise:@"NSUnitException" format:@"value is not an empty string."];
        
    }];
    return res;
}

@end
