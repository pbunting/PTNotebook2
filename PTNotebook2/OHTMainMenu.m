//
//  OHTMainMenu.m
//  PTNotebook2
//
//  Created by Paul Bunting on 6/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import "OHTMainMenu.h"

@interface OHTMainMenu ()

@property (nonatomic) NSArray* options;

@end

@implementation OHTMainMenu

- (id) init
{
    self = [super init];
    if (self)
    {
        self.options = @[
                         @[@{@"title": @"Messages"},
                           @{@"title": @"Your Profile"},
                           @{@"title": @"Trainees"},
                           @{@"title": @"Programs"},
                           @{@"title": @"Results"}]
                         ];
    }
    return self;
}

#pragma mark UITableViewDataSource
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.options[indexPath.section][indexPath.row][@"title"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.options[section] count];
}

#pragma mark UItableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        NSDictionary* cellDetail = self.options[indexPath.section][indexPath.row];
        
        if ([cellDetail[@"title"] isEqualToString:@"Trainees"])
        {
            [self.delegate showTrainees];
        }
    }
}

@end
