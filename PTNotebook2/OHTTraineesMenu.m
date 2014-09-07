//
//  OHTTraineesMenu.m
//  PTNotebook2
//
//  Created by Paul Bunting on 7/09/2014.
//  Copyright (c) 2014 100 Trees. All rights reserved.
//

#import "OHTTraineesMenu.h"

@interface OHTTraineesMenu()

@property (nonatomic) NSArray* options;

@end

@implementation OHTTraineesMenu

- (id) init
{
    self = [super init];
    if (self)
    {
        self.options = @[
                         @[@{@"title": @"Details"},
                           @{@"title": @"Measurements"},
                           @{@"title": @"Observations"},
                           @{@"title": @"Programs"}]
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
        
        if ([cellDetail[@"title"] isEqualToString:@"Details"])
        {
            [self.delegate showDetails];
        }
        if ([cellDetail[@"title"] isEqualToString:@"Measurements"])
        {
            [self.delegate showMeasurements];
        }
        if ([cellDetail[@"title"] isEqualToString:@"Observations"])
        {
            [self.delegate showObservations];
        }
        if ([cellDetail[@"title"] isEqualToString:@"Programs"])
        {
            [self.delegate showDetails];
        }
    }
}

@end
