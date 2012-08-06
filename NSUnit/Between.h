//
//  Between.h
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationProtocol.h"

@interface Between : NSObject {
    
    NSNumber *_low;
    NSNumber *_high;

}

+ (NSObject<OperationProtocol> *) low:(NSNumber *) l and:(NSNumber *) high;

@end
