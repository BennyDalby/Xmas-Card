//
//  AnimatedViewController.m
//  AnimationDemo
//
//  Created by Benny Dalby on 12/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AnimatedViewController.h"
#define RADIANS(degrees) ((degrees * M_PI) / 180.0)

@interface AnimatedViewController ()

@end

@implementation AnimatedViewController

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
    self=[super init];
    
       if(self)
       {     x=300;
           self.view.backgroundColor=[UIColor whiteColor];
           NSLog(@"init with screen called again") ;
           [self load_label];
           [self load_image];
       
       
       }

    return self ;

}

-(void)load_image
{

    img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"click here.png"]]; 
    img.center=CGPointMake(60, 30);
    img.userInteractionEnabled=true ;
    [self.view addSubview:img];

    
    img2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"XmasTreeUndecoratedRect200.jpg"]]; 
    img2.center=CGPointMake(150, 240);
    img2.userInteractionEnabled=true ;
   // img2.sizeToFit ;
        [self.view addSubview:img2];


}


-(void)load_label
{

    text1=[[UILabel alloc]initWithFrame:CGRectMake(90, 10, 350,50)];
    
    text1.text=@"Let Us Decorate the Tree !!" ;
    text1.backgroundColor=[UIColor clearColor ];
    
    
    CGAffineTransform leftWobble = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(-180.0));
    CGAffineTransform rightWobble = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(360.0));
    CGAffineTransform centreWobble = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(0.0));
    text1.transform = leftWobble;  // starting point
    NSLog(@"inside the if");
    
    [UIView beginAnimations:@"wobble" context:text1];
    text1.textColor=[UIColor purpleColor] ;
    [UIView setAnimationRepeatAutoreverses:YES];
    [UIView setAnimationRepeatCount:3]; // adjustable
    [UIView setAnimationDuration:0.500];
    [UIView setAnimationDelegate:self];
    text1.transform = rightWobble; // end here & auto-reverse
    
    [UIView commitAnimations];
   // text1.textColor=[UIColor whiteColor] ;
    text1.transform=centreWobble ;
    
    
    exit = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"exit.jpg"]]; 
    exit.center=CGPointMake(50, 30);
    exit.userInteractionEnabled=true ;
    exit.hidden=true ;
    [self.view addSubview:exit];
    
    
    label=[[UILabel alloc]initWithFrame:CGRectMake(50, 100, 350,50)];
    
    label.text=@"AUTHOR-Benny Dalby" ;
    label.backgroundColor=[UIColor clearColor ];
    [self.view addSubview:label];
    label.hidden=true ;
    
    
    
    [self.view addSubview:text1];



}

-(void)load_decor
{

    img3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"flower.png"]]; 
    img3.center=CGPointMake(20, 30);
    img3.userInteractionEnabled=true ;
    [self.view addSubview:img3];

    img4 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"flower.png"]]; 
    img4.center=CGPointMake(20, 50);
    img4.userInteractionEnabled=true ;
    [self.view addSubview:img4];
    
    img5 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"flower.png"]]; 
    img5.center=CGPointMake(20, 70);
    img5.userInteractionEnabled=true ;
    [self.view addSubview:img5];
    
    img6 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"flower.png"]]; 
    img6.center=CGPointMake(20, 90);
    img6.userInteractionEnabled=true ;
    [self.view addSubview:img6];
    
    img8 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"flower.png"]]; 
    img8.center=CGPointMake(20, 110);
    img8.userInteractionEnabled=true ;
    [self.view addSubview:img8];
    
    
    img9 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"flower.png"]]; 
    img9.center=CGPointMake(20, 130);
    img9.userInteractionEnabled=true ;
    [self.view addSubview:img9];
    
    
    img10 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"flower.png"]]; 
    img10.center=CGPointMake(20, 150);
    img10.userInteractionEnabled=true ;
    [self.view addSubview:img10];
    
    
    img7 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"go.gif"]]; 
    img7.center=CGPointMake(300, 220);
    img7.userInteractionEnabled=true ;
    [self.view addSubview:img7];


}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
    UITouch *touch=[touches anyObject];
    
    if(touch.view==img)
    {
        [text1 removeFromSuperview];
        [img removeFromSuperview ];
        [self load_decor];
         
    }
    
    if(touch.view==img7)
    {
    
        
        NSArray *arrFrames = [NSArray arrayWithObjects:[UIImage imageNamed:@"flower.png"],
                              [UIImage imageNamed:@"bells4.png"],
                              [UIImage imageNamed:@"bells4.png"],
                              [UIImage imageNamed:@"bells4.png"],
                              [UIImage imageNamed:@"flower.png"],nil];
        CGPoint point1=img6.frame.origin ;
        CGPoint point2=img3.frame.origin ;
        CGPoint point3=img4.frame.origin ;
        CGPoint point4=img5.frame.origin ;
        CGPoint point8=img8.frame.origin ;
        CGPoint point9=img9.frame.origin ;
        CGPoint point10=img10.frame.origin ;
        
        
        img6.hidden=true ;
        img5.hidden=true ;
        img3.hidden=true ;
        img4.hidden=true ;
        img8.hidden=true ;
        img9.hidden=true ;
        img10.hidden=true ;
        
        
        img6 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
        img3 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
        img4 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
        img5 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
        img8 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
        img9 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
        img10 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
        
        img6.center=point1 ;
        img5.center=point4 ;
        img4.center=point3 ;
        img3.center=point2 ;
        img8.center=point8 ;
        img9.center=point9 ;
        img10.center=point10 ;
        
        
        img6.userInteractionEnabled=true ;
        img3.userInteractionEnabled=true ;
        img4.userInteractionEnabled=true ;
        img5.userInteractionEnabled=true ;
         img8.userInteractionEnabled=true ;
         img9.userInteractionEnabled=true ;
         img10.userInteractionEnabled=true ;
        
        
        
        [self.view addSubview:img6];
        [self.view addSubview:img3];
        [self.view addSubview:img4];
        [self.view addSubview:img5];
        [self.view addSubview:img8];
        [self.view addSubview:img9];
        [self.view addSubview:img10];

        img6.animationImages = arrFrames;
        img6.animationDuration = 0.5;
        [img6 startAnimating];
        
        img3.animationImages = arrFrames;
        img3.animationDuration = 0.5;
        [img3 startAnimating];
        
        img4.animationImages = arrFrames;
        img4.animationDuration = 0.5;
        [img4 startAnimating];
        
        img5.animationImages = arrFrames;
        img5.animationDuration = 0.5;
        [img5 startAnimating];
        
        img8.animationImages = arrFrames;
        img8.animationDuration = 0.5;
        [img8 startAnimating];
        
        img9.animationImages = arrFrames;
        img9.animationDuration = 0.5;
        [img9 startAnimating];
        
        img10.animationImages = arrFrames;
        img10.animationDuration = 0.5;
        [img10 startAnimating];

    
        text2=[[UILabel alloc]initWithFrame:CGRectMake(300,50 , 200, 50)] ;
        text2.text=@"Merry Xmas !!" ;
        text2.textColor=[UIColor redColor];
        text2.backgroundColor=[UIColor clearColor ];
        [self.view addSubview:text2];
        CGRect frame=text2.frame ;
       // x=300;
                
              [UIView beginAnimations:nil context:text2];
       // [UIView setAnimationRepeatCount:3];
        [UIView setAnimationDuration:1.0];   // 6 seconds, adjust
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        x-=200;
        frame.origin.x=x;
        text2.frame = frame ; // set it to the destination (left edge)
        
        [UIView commitAnimations];
        
        img7.userInteractionEnabled=false ;
        exit.hidden=false ;
        
    }
    
    if(touch.view==exit)
    {
        [img removeFromSuperview];
        [img2 removeFromSuperview];
         [img3 removeFromSuperview];
         [img4 removeFromSuperview];
         [img5 removeFromSuperview];
         [img6 removeFromSuperview];
         [img7 removeFromSuperview];
         [img8 removeFromSuperview];
        [img9 removeFromSuperview];
        [img10 removeFromSuperview];
        
        [text1 removeFromSuperview];
        [text2 removeFromSuperview];
        [exit removeFromSuperview ];
        label.hidden=false  ;
        
        self.view.backgroundColor=[UIColor blackColor];
        
//        CGRect frame=label.frame ;
//        // x=300;
//        
//        [UIView beginAnimations:nil context:label];
//        
//        //[UIView setAnimationRepeatCount:3];
//        [UIView setAnimationDuration:1.0];   // 6 seconds, adjust
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        y+=100;
//        frame.origin.y=y;
//        label.frame = frame ; // set it to the destination (left edge)
//        
//        [UIView commitAnimations];
//        
//        
//        
//        
//        frame=label.frame ;
//        // x=300;
//        
//        [UIView beginAnimations:nil context:label];
//        
//      //  [UIView setAnimationRepeatCount:3];
//        [UIView setAnimationDuration:2.0];   // 6 seconds, adjust
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        y-=10;
//        frame.origin.y=y;
//        label.frame = frame ; // set it to the destination (left edge)
//        
//        [UIView commitAnimations];
//        
//        
//        
//        
//        frame=label.frame ;
//        // x=300;
//        
//        [UIView beginAnimations:nil context:label];
//        
//        //[UIView setAnimationRepeatCount:3];
//        [UIView setAnimationDuration:1.0];   // 6 seconds, adjust
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        y+=10;
//        frame.origin.y=y;
//        label.frame = frame ; // set it to the destination (left edge)
//        
//        [UIView commitAnimations];
        label.textColor=[UIColor whiteColor];
        
        label.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
        label.transform=CGAffineTransformMakeScale(20.0, 50.0);
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.5];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(bounce1AnimationStopped)];
       // [self.view addSubview:label];
        label.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
        [UIView commitAnimations];
    
    
    
    }
}



- (void)bounce1AnimationStopped {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3/2];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounce2AnimationStopped)];
    label.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
    [UIView commitAnimations];
}

- (void)bounce2AnimationStopped {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.8];
    label.transform = CGAffineTransformIdentity;
    [UIView commitAnimations];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touches Moved");
    UITouch *touch = [touches anyObject];
    if(touch.view==img3)
    {
        CGPoint location = [touch locationInView:self.view];
        img3.center = location;

    
    }
    
    if(touch.view==img4)
    {
        CGPoint location = [touch locationInView:self.view];
        img4.center = location;
        
        
    }
    
    
    if(touch.view==img5)
    {
        CGPoint location = [touch locationInView:self.view];
        img5.center = location;
        
        
    }
    
    if(touch.view==img6)
    {
        CGPoint location = [touch locationInView:self.view];
        img6.center = location;
        
        
    }
    
    if(touch.view==img8)
    {
        CGPoint location = [touch locationInView:self.view];
        img8.center = location;
        
        
    }
    
    if(touch.view==img9)
    {
        CGPoint location = [touch locationInView:self.view];
        img9.center = location;
        
        
    }
    
    
    if(touch.view==img10)
    {
        CGPoint location = [touch locationInView:self.view];
        img10.center = location;
        
        
    }
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touches Ended");
    UITouch *touch = [touches anyObject];
    
    
    
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
