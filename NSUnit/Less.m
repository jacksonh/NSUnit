//
//  Less.m
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import "Less.h"
#import "NumberComparisonOperation.h"

@implementation Less

+ (NSObject<OperationProtocol> *) than:(NSNumber *) rvalue
{
    NSArray *allowed = [NSArray arrayWithObject:@-1];
    NumberComparisonOperation *res = [[NumberComparisonOperation alloc] initWithRValue:rvalue
                                                            andAllowedComparisonValues:allowed];

    return res;
}

+ (NSObject<OperationProtocol> *) thanOrEqualTo:(NSNumber *) rvalue
{
    NSArray *allowed = [NSArray arrayWithObjects:@0, @-1, nil];
    NumberComparisonOperation *res = [[NumberComparisonOperation alloc] initWithRValue:rvalue
                                                            andAllowedComparisonValues:allowed];
    
    return res;
}

@end
