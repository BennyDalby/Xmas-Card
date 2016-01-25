//
//  ViewController.h
//  HelloWorld
//
//  Created by Benny Dalby on 11/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Screen3Controller.h"
#import "AnimatedViewController.h"

@interface ViewController : UIViewController
{
    UILabel* myText;
    UIImageView* myImg1,*santa,*click,*myImg2;
}

- (void)loadMyText;
- (void)loadMyImage;
-(void)loadsanta ;
-(void)clickhere ;

@end
