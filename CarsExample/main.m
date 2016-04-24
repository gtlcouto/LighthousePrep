//
//  main.m
//  CarsExample
//
//  Created by Gustavo Couto on 2016-04-24.
//  Copyright (c) 2016 Gustavo Couto. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "CarsExample-Swift.h"
#define START   NSDate *startTime = [NSDate date]
#define FINISH   NSLog(@"%s Time: %f", __func__, -[startTime timeIntervalSinceNow])

void test1(NSArray *testArray)
{
    START;
    NSNumber* max = [testArray valueForKeyPath:@"@max.self"];
    FINISH;
    NSLog(@"Max value test 1: %@", max);
}

void test2(NSArray* testArray)
{
    START;
    float max = -MAXFLOAT;
    for(NSNumber* i in testArray)
    {
        float floatVal = i.floatValue;
        if(floatVal > max) max = floatVal;
    }
    FINISH;
    NSLog(@"Max value test 2: %f", max);
}

int main(int argc, const char * argv[]) {
    //Assignment #1
    Toyota* toyotaCar = [Toyota new];
    Car* toyotaCar2 = [[Toyota alloc] init];
    Car* defaultCar = [[Car alloc] initWithModel:@"Rogue"];

    [toyotaCar drive];
    [toyotaCar2 drive];
    [defaultCar drive];

    //Extra: Swift classes
    SwiftCar* defaultSwiftCar = [[SwiftCar alloc] initWithModel:@"SwiftRogue"];
    SwiftCar* toyotaSwiftCar2 = [[SwiftToyota alloc] init];
    SwiftToyota* toyotaSwiftCar = [SwiftToyota new];

    [defaultSwiftCar drive];
    [toyotaSwiftCar drive];
    [toyotaSwiftCar2 drive];



    //Assignment #2
    NSArray* myNumbers = @[@3, @7, @6, @8];
    NSArray* myNumbers2 = @[@44, @5, @6];

    int maxValue = [[myNumbers valueForKeyPath:@"@max.intValue"] intValue];
    NSLog(@"Maximum value is %d", maxValue);

    maxValue = [[myNumbers2 valueForKeyPath:@"@max.intValue"] intValue];
    NSLog(@"Maximum value is %d", maxValue);







    //Extra: Execution speed test
    NSMutableArray* testArray = [NSMutableArray array];
    START;
    for (int i = 0; i < 99999; i++)
    {

        [testArray addObject:@(arc4random_uniform(100000)/100.)];

    }
    FINISH;

    test1(testArray);
    test2(testArray);



    //Main has to return an exit code
    return 0;
}

