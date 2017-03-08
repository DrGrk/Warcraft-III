//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"
#import "Peasant.h"


@implementation Barracks

-(instancetype)init{
    self = [super init];
    if (self) {
        _gold = 1000;
        _food = 80;
        
    }
    return self;
}

-(Footman *)trainFootman{
    if ([self canTrainFootman]) {
    self.gold -= 135;
    self.food = self.food - 2;
    Footman *newFootman = [[Footman alloc] init];
    return newFootman;
    }
    return nil;
}

-(BOOL)canTrainFootman{
    BOOL isItPossible = YES;
    
    if (self.food < 2){
        isItPossible = NO;
    }
    
    if (self.gold < 135){
        isItPossible = NO;
    }
    
    return isItPossible;
}

-(Peasant *)trainPeasant{
    if ([self canTrainPeasant]) {
    Peasant *newpeasant = [[Peasant alloc]init];
    self.gold = self.gold - 90;
    self.food = self.food - 5;
    return newpeasant;
    }
    return nil;
}

-(BOOL)canTrainPeasant{
    if (self.gold < 90 || self.food <5) {
        return NO;
    }
    return YES;
}


@end
