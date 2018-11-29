//
//  Calculator_Brain.h
//  IOSLab1_Calculator19thsept
//
//  Created by Tenzin Chozom on 19/09/18.
//  Copyright © 2018 Tenzin Chozom. All rights reserved.
//

#import <Foundation/Foundation.h>
//in header file declaring  all the public properties
@interface Calculator_Brain : NSObject//NSObject is the default base class

-(void) pushItem:(double)number;// declaring the function to push the number to the NSMutable array
-(double) calculate:(NSString*) operator;//declaring the method to compute the result with passing the operator
@end
