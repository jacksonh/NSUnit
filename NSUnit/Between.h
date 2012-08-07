//
//  Between.h
//  NSUnit
//
//  Created by Jackson Harper on 8/5/12.
//  Copyright (c) 2012 Jackson Harper. All rights reserved.
//  Copyright (c) 2012 Benjamin van der Veen. All rights reserved
//

#import <Foundation/Foundation.h>

@protocol OperationProtocol;

@interface Between : NSObject {
    
    NSNumber *_low;
    NSNumber *_high;

}

+ (NSObject<OperationProtocol> *) low:(NSNumber *) l and:(NSNumber *) high;

@end
