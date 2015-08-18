//
//  TabbarViewController.m
//  LbsqMerchantVersion
//
//  Created by Runkun1 on 15/8/18.
//  Copyright (c) 2015年 Runkun. All rights reserved.
//

#import "TabbarViewController.h"
#import "TabBarItem.h"

@interface TabbarViewController ()

@end

@implementation TabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.hidden = YES;
    
    UIView *tabBarView = [[UIView alloc] initWithFrame:CGRectMake(0, kScreen_height-49, kScreen_width, 49)];
    tabBarView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:tabBarView];
    
    for (int i = 0; i < 3; i++) {
        if (i == 1) {
            UIButton *scanBtn = [UIButton buttonWithType:UIButtonTypeSystem];
            scanBtn.frame = CGRectMake(0, 0, kScreen_width/3, tabBarView.height);
            scanBtn.backgroundColor = KRandomColor;
            scanBtn.tag = 100 + i;
            scanBtn.centerX = tabBarView.centerX;
            [scanBtn addTarget:self action:@selector(tabbarButtonsAction:) forControlEvents:UIControlEventTouchUpInside];
            [tabBarView addSubview:scanBtn];
        } else {
            TabBarItem *itemView = [[TabBarItem alloc] initWithFrame:CGRectMake(i*kScreen_width/3, 0, kScreen_width/3, tabBarView.height) image:nil title:@"测试" selectedImage:nil];
            itemView.button.tag = 100 + i;
            [itemView.button addTarget:self action:@selector(tabbarButtonsAction:) forControlEvents:UIControlEventTouchUpInside];
            [tabBarView addSubview:itemView];
        }
        
    }
    
    // Do any additional setup after loading the view.
}

-(void)tabbarButtonsAction:(UIButton *)button
{
    switch (button.tag) {
        case 100:{
            self.selectedIndex = 0;
            break;
        }
        case 101:{
            self.selectedIndex = 1;
            break;
        }
        case 102:{
            self.selectedIndex = 2;
            break;
        }
            
        default:
            break;
    }
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
