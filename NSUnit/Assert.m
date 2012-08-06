//
//
//  NSUnit.m
//  NSUnit
//
// Copyright (C) 2012 Jackson Harper
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software
// and associated documentation files (the "Software"), to deal in the Software without restriction,
// including without limitation the rights to use, copy, modify, merge, publish, distribute,
// sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
// NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
//

#import "Assert.h"


@implementation Assert


+ (void) that:(NSObject *) lvalue is:(NSObject<OperationProtocol> *) operation
{
    if (operation == nil && lvalue != nil)
        [NSException raise:@"NSUnitException" format:@"lvalue is not nil, but rvalue is"];
    [operation executeWithLeftValue:lvalue];
}

+ (void) that:(NSObject *) lvalue isNot:(NSObject<OperationProtocol> *) operation
{
    BOOL failed = NO;
    @try {
        [self that:lvalue is:operation];
    } @catch (id exc) {
        failed = YES;
    }
    
    if (!failed)
        [NSException raise:@"NSUnitException" format:@"Operation did not fail."];
}

+ (void) that:(NSObject<NSFastEnumeration> *) collection areAll:(NSObject<OperationProtocol> *) operation
{
    int index = 0;
    NSMutableArray *failures = nil;
    
    for (NSObject *obj in collection) {
        @try {
            [operation executeWithLeftValue:obj];
        }
        @catch (id exc) {
            if (!failures)
                failures = [NSMutableArray array];
            [failures addObject:[NSString stringWithFormat:@"Test for index: %d failed: '%@'", index, exc]];
        }
        ++index;
    }
    
    if (failures) {
        [NSException raise:@"NSUnitException"
                    format:@"The following %d errors occurred:%@",
         [failures count],
         [failures componentsJoinedByString:@", "]];
    }
}

@end
