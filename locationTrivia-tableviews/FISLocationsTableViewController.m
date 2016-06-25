//
//  FISLocationsTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Flatiron School on 6/25/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"

@interface FISLocationsTableViewController ()

@end

@implementation FISLocationsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.locations = [[FISLocation alloc]init];
    
    (NSLog(@"%@", self.locations));
    self.tableView.accessibilityLabel = @"Locations Table";
    self.tableView.accessibilityIdentifier = @"Locations Table";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.locations count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"locationCells" forIndexPath:indexPath];

    FISLocation *itemsLocation = self.locations[indexPath.row];
    cell.textLabel.text = itemsLocation.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu", itemsLocation.trivia.count];
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FISTriviaTableViewController *triviaVC = (FISTriviaTableViewController *)segue.destinationViewController;
        NSIndexPath *index = self.tableView.indexPathForSelectedRow;
    triviaVC.trivia = [[self.locations objectAtIndex:index.row]trivia];
    
    //FISLocation *newLocation = self.locations[index.row];
    //triviaVC.trivia = newLocation.trivia[index];
}


@end
