//
//  Identical.h
//  NSUnit
//
//  Created by Jackson Harper on 8/21/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OperationProtocol;


@interface TheSame : NSObject

+ (NSObject<OperationProtocol> *) as:(NSObject *) other;

@end
