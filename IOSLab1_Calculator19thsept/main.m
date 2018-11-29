//
//  main.m
//  IOSLab1_Calculator19thsept
//
//  Created by Tenzin Chozom on 19/09/18.
//  Copyright © 2018 Tenzin Chozom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator_Brain.h"

int main(int argc, const char * argv[]) {
    //@autoreleasepool {
    // to create the object for Calculator Brain class to call the function of it
    Calculator_Brain *mycal= [[Calculator_Brain alloc]init];
    [mycal pushItem:6];// calling the popItem function using object "mycal" and passing the parameter(6) to it
    [mycal pushItem:12];
    NSLog(@"The Result is %f",[mycal calculate:@"*"]);//calling the calculate function using object "mycal" and passing the parameter "*" as string to it
    return 0 ;
}
