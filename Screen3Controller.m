//
//  Screen3Controller.m
//  TabCreation
//
//  Created by Benny Dalby on 12/11/12.
//  Copyright (c) 2012 com.accenture. All rights reserved.
//

#import "Screen3Controller.h"
#define RADIANS(degrees) ((degrees * M_PI) / 180.0)

@interface Screen3Controller ()

@end

@implementation Screen3Controller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initwithscreen
{

    self=[super self] ;
    
      if(self)
      {     NSLog(@"init with screen") ;
          self.title=@"XMAS TIME" ;
          self.view.backgroundColor=[UIColor grayColor] ;
          scrollView=nil ;
          [self loadScrollView] ;
          //[self label1];
          self.view.userInteractionEnabled = TRUE;
      }
    
    
    return self ;


}

- (void) loadScrollView
{
    self.view.backgroundColor = [UIColor purpleColor];
    scrollView = [[CustomScrollView alloc] initWithFrame:CGRectMake(50, 100,200,150)];
    scrollView.backgroundColor = [UIColor clearColor];
    
    float xpos = 35.0;
    float ypos = 50.0;
    float scrollWidth = 100.0;
    
    [self.view addSubview:scrollView];
    scrollView.userInteractionEnabled = TRUE;
    scrollView.scrollDelegate = self;
    
    for (int i = 0; i < 30; i++) {
        //  UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"iwall%di.jpg", i+1]];
         thumbNail = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"iwall%di.jpg", i+1]]];
        thumbNail.tag = i+1;
        thumbNail.center = CGPointMake(xpos, ypos);
        thumbNail.userInteractionEnabled = TRUE;
        [scrollView addSubview:thumbNail];
        //if (i%3 == 2)
        {
            xpos = xpos + 75.0;
            ypos = 50.0;
            scrollWidth += 95.0;
        }
//        else {
//            ypos = ypos + 95.0;
//        }
//        
    }
    [scrollView setContentSize: CGSizeMake(scrollWidth, scrollView.frame.size.height)];
}
                            
- (void) scrollViewClicked:(NSSet *)touches withEvent:(UIEvent *)event
{  
    NSLog(@"wobbling to be done") ;

    UITouch *touc=[touches anyObject] ;
    UIImageView *view=nil;
    
    CGAffineTransform leftWobble = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(-15.0));
    CGAffineTransform rightWobble = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(15.0));
    int j=0;
    for(int i=0;i<30;i++)
    {
    if(touc.view==[scrollView viewWithTag:i+1])
    {      
        for(int i=0;i<30;i++)
        {   
        view=(UIImageView *)[scrollView viewWithTag:i+1];
       // UIImageView *view=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"iwall%di.jpg", 10]]]; 
    view.transform = leftWobble;  // starting point
        NSLog(@"inside the if");
    [UIView beginAnimations:@"wobble" context:view];
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:25]; // adjustable
    [UIView setAnimationDuration:0.200];
    [UIView setAnimationDelegate:self];
    view.transform = rightWobble; // end here & auto-reverse
    [UIView commitAnimations];
       
        }
    }  
        j=1 ;
    }//for loop
    
    if(j==1)
     [self helo_india];
   
   // [screen3 release];
    
}

-(void)helo_india
{

    
    BIGScreenViewController *screen3=[[BIGScreenViewController alloc]initwithscreen];
    
    //  self.navigationItem.backBarButtonItem.title = @"Back";
    [self.navigationController pushViewController:screen3 animated:YES];


}

-(void)label1
{
 
    label1 =[[UILabel alloc] initWithFrame:CGRectMake(10, 100, 200,50)];
    label1.text=@"Scroll View Demo";
    label1.textColor=[UIColor whiteColor];
    label1.backgroundColor=[UIColor clearColor];
    label1.textAlignment=UITextAlignmentLeft ;

    
    [self.view addSubview:label1];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
