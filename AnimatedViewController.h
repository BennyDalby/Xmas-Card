//
//  AnimatedViewController.h
//  AnimationDemo
//
//  Created by Benny Dalby on 12/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimatedViewController : UIViewController
{

    UILabel *text1,*text2,*label ;

    UIImageView *img,*img2,*img3,*img4,*img5,*img6,*img7,*img8,*img9,*img10,*exit ;
    
    NSTimer *timer;

    int x,y ;
}

-(void)load_label ;
-(void)load_image ;
-(void)load_decor ;


@end
