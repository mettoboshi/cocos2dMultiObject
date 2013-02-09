//
//  MultiObjectLayer.m
//  MultiObject
//
//  Created by mettoboshi on 13/02/08.
//  Copyright 2013 mettobo. All rights reserved.
//

#import "MultiObjectLayer.h"
#import "Ball.h"

@implementation MultiObjectLayer

+ (CCScene *) scene
{
    //シーンの追加
    CCScene *scene = [CCScene node];
    MultiObjectLayer *layer = [MultiObjectLayer node];
    [scene addChild: layer];
    
    return scene;
}

- (id)init {
    self = [super init];
    if (self) {
        // タッチイベントを使用するためのおまじない1
        self.isTouchEnabled = YES;
        
        batch = [CCSpriteBatchNode batchNodeWithFile:@"akamaru_mini.png"];
		[self addChild:batch];        
    }
    return self;
}

// タッチイベントを使用するためのおまじない2
-(void) registerWithTouchDispatcher
{
    CCDirector *director = [CCDirector sharedDirector];
    [[director touchDispatcher] addTargetedDelegate:self priority:0 swallowsTouches:YES];
}

// タッチ開始した場合に呼ばれるメソッド
-(BOOL) ccTouchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    ballImageAka  = [[Ball alloc]initWithPlace:100 placeY:100];
    [batch addChild:ballImageAka];
    
    return YES;
}

-(void) ccTouchEnded:(UITouch *)touch withEvent:(UIEvent *)event
{
}

-(void) ccTouchCancelled:(UITouch *)touch withEvent:(UIEvent *)event
{
}

-(void) ccTouchMoved:(UITouch *)touch withEvent:(UIEvent *)event
{
}

@end
