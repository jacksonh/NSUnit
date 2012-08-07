//
//  BlockOperationProtocol.h
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import <Foundation/Foundation.h>
#import "OperationProtocol.h"


typedef void (^NSObjectBlockOperationProtocol)(NSObject *lvalue, NSObject *rvalue);

@interface BlockOperation : NSObject<OperationProtocol> {
    
    NSObject *_rvalue;
    NSObjectBlockOperationProtocol _block;
}

- (id) initWithRValue:(NSObject *) rvalue andBlock:(NSObjectBlockOperationProtocol) block;

- (void) executeWithLeftValue:(NSObject *) left;

@end