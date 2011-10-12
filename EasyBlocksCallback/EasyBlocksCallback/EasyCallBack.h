//
//  EasyCallBack.h
//  EasyBlocksCallback
//
//  Created by Tomohisa Takaoka on 10/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EasyCallBack : NSObject
typedef void (^BlockTypeCallback)(id sender);
@property (nonatomic, copy) BlockTypeCallback blockCallback;
-(void) callBackStart:(BlockTypeCallback)block;
@end
