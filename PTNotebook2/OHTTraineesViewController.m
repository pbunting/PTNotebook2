//
//  OHTTraineesViewController.m
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import "OHTTraineesViewController.h"

@interface OHTTraineesViewController ()

@end

@implementation OHTTraineesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (UIButton*) simpleButtonWithLabel:(NSString*)label {
    UIButton* button = [[UIButton alloc] init];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button setTitle:label forState:UIControlStateNormal];
    
    return button;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton* actionButton = [self simpleButtonWithLabel:@"Press Me!"];
//    [actionButton setTitle:@"Press!" forState:UIControlStateHighlighted];
//    [actionButton setTitle:@"Press!" forState:UIControlStateDisabled];
//    [actionButton setTitle:@"Press!" forState:UIControlStateSelected];
    [actionButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:actionButton];
    
    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(actionButton);

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[actionButton(>=100)]-200-|" options:0 metrics:nil views:viewsDictionary]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[actionButton(>=100)]-200-|" options:0 metrics:nil views:viewsDictionary]];
    
    [actionButton addTarget:self action:@selector(makeSelection) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) makeSelection
{
    NSLog(@"Pressed");
    [self.flowDelegate selectTrainee];
}


@end
