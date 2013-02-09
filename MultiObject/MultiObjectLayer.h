//
//  MultiObjectLayer.h
//  MultiObject
//
//  Created by mettoboshi on 13/02/08.
//  Copyright 2013 mettobo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Ball.h"

@interface MultiObjectLayer : CCLayer {
    Ball* ballImageAka;
    CCSpriteBatchNode* batch;
}

+ (CCScene *) scene;

@end
