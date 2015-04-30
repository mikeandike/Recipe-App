//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Michael Sacks on 4/30/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipesTableViewDataSource.h"
#import "RecipeDetailViewController.h"

@interface RecipeViewController () <UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) RecipesTableViewDataSource *dataSource;

@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Dank Recipes";
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.dataSource = [RecipesTableViewDataSource new];
    [self.dataSource registerTableView:self.tableView];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    
    [self.view addSubview:self.tableView];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    RecipeDetailViewController *recipeDetailViewController = [RecipeDetailViewController new];
    recipeDetailViewController.recipeIndex = indexPath.row;
    
    [self.navigationController pushViewController:recipeDetailViewController animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
