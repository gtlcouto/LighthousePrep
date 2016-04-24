//
//  Header.h
//  CarsExample
//
//  Created by Gustavo Couto on 2016-04-24.
//  Copyright (c) 2016 Gustavo Couto. All rights reserved.
//



#ifndef CarsExample_Header_h
#define CarsExample_Header_h

#import <Foundation/Foundation.h>

//Car class
@interface Car : NSObject
@property NSString* model;



-(void)drive;
-(instancetype) initWithModel: (NSString *)model;


@end


//Toyota class
@interface Toyota : Car

-(instancetype) init;

@end






#endif
