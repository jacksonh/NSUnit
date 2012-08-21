//
//  NSUnitTests.m
//  NSUnitTests
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import "NSUnitTests.h"
#import "NSUnit.h"

@implementation NSUnitTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void) test_AssertThatIsEqual_TwoEqualStrings_doesNotFail
{
    [Assert that:@"_the_string_" is:[Equal to:@"_the_string_"]];
}

- (void) test_AssertThatIsNotEqual_TwoUnequalStrings_doesNotFail
{
    [Assert that:@"_the_string_" isNot:[Equal to:@"_not_the_string_"]];
}

- (void) test_AssertThatAreAll_ArrayWithMultipleElementsThatMatchRValue_doesNotFail
{
    NSArray *the_array = [NSArray arrayWithObjects:@"one", @"one", @"one", @"one", nil];
    
    [Assert that:the_array areAll:[Equal to:@"one"]];
}

- (void) test_AssertThatAreAll_SetWithMultipleElementsThatMatchRValue_doesNotFail
{
    NSSet *the_set = [NSSet setWithObjects:@"one", @"one", @"one", @"one", nil];
    
    [Assert that:the_set areAll:[Equal to:@"one"]];
}

- (void) test_AssertThatIsNil_OnNilObject_doesNotFail
{
    NSString *the_obj = nil;
    
    [Assert that:the_obj is:Nil];
}

- (void) test_AssertThatIsNotNil_OnNonNilObject_doesNotFail
{
    NSString *the_obj = @"the_obj";
    
    [Assert that:the_obj isNot:Nil];
}

- (void) test_AssertThatIsLessThan_NumberIsLessThanRValue_doesNotFail
{
    NSNumber *the_num = @10;
    
    [Assert that:the_num is:[Less than:@11]];
}

- (void) test_AssertThatIsLessThanOrEqualTo_NumberIsLessThanRValue_doesNotFail
{
    NSNumber *the_num = @10;
    
    [Assert that:the_num is:[Less thanOrEqualTo:@11]];
}

- (void) test_AssertThatIsLessThanOrEqualTo_NumberIsEqualToRValue_doesNotFail
{
    NSNumber *the_num = @11;
    
    [Assert that:the_num is:[Less thanOrEqualTo:@11]];
}


- (void) test_AssertThatIsGreaterThan_NumberIsGreaterThanRValue_doesNotFail
{
    NSNumber *the_num = @11;
    
    [Assert that:the_num is:[Greater than:@10]];
}

- (void) test_AssertThatIsGreaterThanOrEqualTo_NumberIsGreaterThanRValue_doesNotFail
{
    NSNumber *the_num = @11;
    
    [Assert that:the_num is:[Greater thanOrEqualTo:@10]];
}

- (void) test_AssertThatIsGreaterThanOrEqualTo_NumberIsEqualToRValue_doesNotFail
{
    NSNumber *the_num = @10;
    
    [Assert that:the_num is:[Greater thanOrEqualTo:@10]];
}

- (void) test_AssertThatIsBetween_NumberIsEqualToLow_doesNotFail
{
    NSNumber *the_num = @10;
    
    [Assert that:the_num is:[Between low:@10 and:@20]];
    
}

- (void) test_AssertThatIsBetween_NumberIsBetweenValues_doesNotFail
{
    NSNumber *the_num = @15;
    
    [Assert that:the_num is:[Between low:@10 and:@20]];
    
}

- (void) test_AssertThatIsBetween_NumberIsEqualToHigh_doesNotFail
{
    NSNumber *the_num = @20;
    
    [Assert that:the_num is:[Between low:@10 and:@20]];
    
}

- (void) test_AssertThatIsEmptyArray_ArrayThatIsEmpty_doesNotFail
{
    NSArray *the_array = [NSArray array];
    
    [Assert that:the_array is:[AnEmpty array]];
}

- (void) test_AssertThatIsNotEmptyArray_ArrayThatIsNotEmpty_doesNotFail
{
    NSArray *the_array = [NSArray arrayWithObject:@"an_object"];
    
    [Assert that:the_array isNot:[AnEmpty array]];
}

- (void) test_AssertThatIsEmptyString_StringThatIsEmpty_doesNotFail
{
    NSString *the_string = @"";
    
    [Assert that:the_string is:[AnEmpty string]];
}

- (void) test_AssertThatIsNotEmptyString_StringThatIsNotEmpty_doesNotFail
{
    NSString *the_string = @"not_empty";
    
    [Assert that:the_string isNot:[AnEmpty string]];
}

- (void) test_AssertThatIntIs_IntsThatAreTheSame_doesNotFail
{
    int the_int = 10;
    
    [Assert thatInt:the_int is:[Equal to:@10]];
}

- (void) test_AssertThatIntIsNot_IntsThatAreNotTheSame_doesNotFail
{
    int the_int = 99;
    
    [Assert thatInt:the_int isNot:[Equal to:@10]];
}

- (void) test_AssertThatTheIntIs_IntsThatAreTheSame_doesNotFail
{
    int i = 10;
    
    [Assert that:[The int:i] is:[Equal to:@10]];
}

- (void) test_AssertThatTheDoubleIs_DoublesThatAreTheSame_doesNotFail
{
    double d = 10.0;
    
    [Assert that:[The double:d] is:[Equal to:@10.0]];
}

- (void) test_AsserThatIsTheSame_TheSameLeftAndRightObject_doesNotFail
{
    NSObject *obj = @"hello";

    [Assert that:obj is:[TheSame as:obj]];
}

- (void) test_AsserThatIsNotTheSame_TwoDifferentObjectsWithTheSameValue_doesNotFail
{
    // If we just use left = @"hello"; ... right = @"hello" they will be the same object
    NSObject *left = [NSString stringWithFormat:@"hello"];
    NSObject *right = [NSString stringWithFormat:@"hello"];
    
    [Assert that:left isNot:[TheSame as:right]];
}

@end
