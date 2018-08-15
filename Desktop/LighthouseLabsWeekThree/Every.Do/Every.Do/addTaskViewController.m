//
//  addTaskViewController.m
//  Every.Do
//
//  Created by Kit Clark-O'Neil on 2018-08-14.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "addTaskViewController.h"

@interface addTaskViewController ()

@end

@implementation addTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(ToDo*)createNewTask {
    self.myTask = [[ToDo alloc] init];
    self.myTask.name = self.TaskNameInputField.text;
    self.myTask.priority = [self.taskPriorityInputField.text intValue];
    self.myTask.details = self.taskDescriptionInputField.text;
    return self.myTask;
}
- (IBAction)addButton:(id)sender {
   ToDo *task = [self createNewTask];
    [self.delegate addToDoToList:task];
    [self.navigationController popViewControllerAnimated:YES];
    
    
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
