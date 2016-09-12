//
//  Item.m
//  RandomItems
//
//  Created by Princess Sampson on 9/11/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "Item.h"

@implementation Item

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ (%@): Worth $%@, recorded on %@", self.name, self.serialNumber, @(self.value), self.date];
}

-(void)dealloc {
    NSLog(@"Bye %@", self);
}

+ (instancetype)randomItem {
    NSArray *randomNoun = @[@"Gemstone", @"Macarons", @"Snapback", @"Water bottle", @"Hairtie"];
    NSArray *randomAdj = @[@"Opaque", @"Pealescent", @"Blue", @"Sleek", @"Convenient"];
    
    NSInteger nounIndex = arc4random_uniform((unsigned int) randomNoun.count);
    NSInteger adjIndex = arc4random_uniform((unsigned int) randomAdj.count);
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdj[adjIndex],randomNoun[nounIndex]];
    NSInteger randomValue = arc4random_uniform(100);
    NSString *randomSerial = [[[NSUUID UUID] UUIDString] substringToIndex:5];
    
    return [[self alloc] initWithName:randomName value:randomValue serialNumber:randomSerial];
}

-(void)setContainedItem:(Item *)containedItem {
        _containedItem = containedItem;
        containedItem.container = self;
}

- (instancetype)init {
    return [self initWithName:@"Item"];
    
}

- (instancetype)initWithName:(NSString*)name {
    return [self initWithName:name
                        value:0
                 serialNumber:@""];
}

- (instancetype)initWithName:(NSString*)name
                serialNumber:(NSString*)sNumber {
    return [self initWithName:name
                        value:0
                 serialNumber:sNumber];

}

- (instancetype)initWithName:(NSString*)name
                       value:(NSInteger)valueInDollars
                serialNumber:(NSString*)sNumber {
    self = [super init];
    
    if (self) {
        _name = name;
        _value = valueInDollars;
        _serialNumber = sNumber;
        _date = [NSDate date];
        
    }
    
    return self;
}

@end
