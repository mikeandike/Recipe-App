//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Cole Wilkes on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"
#import "RACustomCellTableViewCell.h"

static NSString *cellID = @"cellID";

@implementation RecipesTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [RARecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
 
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    cell.detailTextLabel.text = [RARecipes descriptionAtIndex:indexPath.row];

    //[cell.detailTextLabel setText:[RARecipes descriptionAtIndex:indexPath.row]];
  
    return cell;
}

- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
}

@end
