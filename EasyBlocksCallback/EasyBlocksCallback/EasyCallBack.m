//
//  EasyCallBack.m
//  EasyBlocksCallback
//
//  Created by Tomohisa Takaoka on 10/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EasyCallBack.h"
@interface EasyCallBack()
-(void) finishedCallBack;
@end
@implementation EasyCallBack
@synthesize blockCallback;
-(void) callBackStart:(BlockTypeCallback)block {
    self.blockCallback = block;
    [self performSelector:@selector(finishedCallBack) withObject:nil afterDelay:5.0];
}
-(void) finishedCallBack{
    blockCallback(self);
}


@end
