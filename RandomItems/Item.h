//
//  Item.h
//  RandomItems
//
//  Created by Princess Sampson on 9/11/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
@property(nonatomic, copy)NSString *name;
@property(nonatomic, copy)NSString *serialNumber;
@property(nonatomic)NSInteger value;
@property(nonatomic, readonly, strong)NSDate *date;
@property(nonatomic, weak)Item *container;
@property(nonatomic, strong)Item *containedItem;

+ (instancetype)randomItem;

- (instancetype)initWithName:(NSString*)name;

- (instancetype)initWithName:(NSString*)name
                serialNumber:(NSString*)sNumber;

- (instancetype)initWithName:(NSString*)name
                       value:(NSInteger)valueInDollars
                serialNumber:(NSString*)sNumber NS_DESIGNATED_INITIALIZER;

@end
