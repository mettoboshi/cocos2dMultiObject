//
//  Ball.m
//  MultiObject
//
//  Created by mettoboshi on 13/02/08.
//  Copyright 2013 mettobo. All rights reserved.
//

#import "Ball.h"

@implementation Ball

- (id)initWithPlace:(int)x placeY:(int)y{
    self = [super init];
    self = [super initWithFile:@"akamaru_mini.png"];

    self.position = CGPointMake(x,y);

    [self scheduleUpdate];

    return self;
}

-(void) dealloc
{	
	[super dealloc];
}

-(void) update:(ccTime)delta {
    CGPoint pos = self.position;
    pos.x += 2;
    self.position = pos;
}

@end