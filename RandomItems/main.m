//
//  main.m
//  RandomItems
//
//  Created by Princess Sampson on 9/11/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *items = [NSMutableArray array];
        
        Item *one = [Item randomItem];
        [items addObject:one];
        
        Item *two = [Item randomItem];
        [items addObject:two];
        
        one.containedItem = two;
        
        for (Item *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
        
    }
    return 0;
}
