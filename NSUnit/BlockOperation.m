//
//  BlockOperationProtocol.m
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import "BlockOperation.h"

@implementation BlockOperation

- (id) initWithRValue:(NSObject *) rvalue
             andBlock:(NSObjectBlockOperationProtocol) block
{
    self = [super init];
    if (self) {
        _rvalue = rvalue;
        _block  = block;
    }
    return self;
}

- (void) executeWithLeftValue:(NSObject *) lvalue
{
    _block (lvalue, _rvalue);
}

@end
