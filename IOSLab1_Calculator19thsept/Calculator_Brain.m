//
//  Calculator_Brain.m
//  IOSLab1_Calculator19thsept
//
//  Created by Tenzin Chozom on 19/09/18.
//  Copyright © 2018 Tenzin Chozom. All rights reserved.
//

#import "Calculator_Brain.h"
//to declare the private properties using interface in implementation file
@interface Calculator_Brain()
@property(nonatomic,strong) NSMutableArray *items;//declaring the NSmutable array with property(nonatomic,strong)
-(double) popItem;//declaring the method to pop the last element from the NSmutable array
@end
@implementation Calculator_Brain
@synthesize items=_items;//compiler creates the getter and setter for variable items and they should use the ivar(instance variable) called _items.
-(void)pushItem:(double)Num// to add the new number to the NSmutable array
{
    //adding object of NSNumber with double value of Num
    [self.items addObject:[NSNumber numberWithDouble:Num]];
   /* for(int i=0;i<_items.count;i++)// to print the array
    {
        NSLog(@"My array is %@", _items[i]);
    }*/
    
}
//function to compute the result with passing the operator as string
-(double) calculate:(NSString*) operator
{
    double num1;
    double num2;
    double result;
   if([operator isEqualToString:@"+"])//if operator is "+"
   {
       num1 = [self popItem];//calling the function popItem()
       num2 = [self popItem];
       result= num1+num2;
    } else if([operator isEqualToString:@"-"])//if its "-"
    {
        num1 = [self popItem];//calling the function popItem()
        num2 = [self popItem];
        result= num1-num2;
        
    } else if([operator isEqualToString:@"*"])//if its "*"
    {
        num1 = [self popItem];//calling the function popItem()
        num2 = [self popItem];
        result= num1*num2;
    }
    else if([operator isEqualToString:@"/"])//if its"/"
    {
        num1 = [self popItem];//calling the function popItem()
        num2 = [self popItem];
        result= num1/num2;
        
    }
        
        return result;
}
-(double)popItem// to remove the last elements of an NSmutable array and return it
{
    //storing the last elememt from an array to temp in double value
    double temp =[[self.items lastObject] doubleValue];
    //to remove the last element from an array
    [self.items removeLastObject];
    return temp;//returns the temp value
}
// to initialize the NSmutable array with getter function
-(NSMutableArray*) items
{
    if(_items == nil)// if the array is NIl
    {
        _items=[[NSMutableArray alloc]init];
    }
    return _items;
}
@end
