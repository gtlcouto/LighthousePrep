//
//  Car.m
//  CarsExample
//
//  Created by Gustavo Couto on 2016-04-24.
//  Copyright (c) 2016 Gustavo Couto. All rights reserved.//

#import "Car.h"

@implementation Car

-(void)drive{

    NSLog(@"Model : %@.", self.model);
}


-(instancetype)initWithModel:(NSString *)model{
    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

@end

@implementation Toyota

-(instancetype)init{
    self = [super init];
    if (self) {
        self.model = @"Prius";
    }
    return self;
}

@end
