# BCHAlertView


###功能介绍
    
    把UIAlertView,UIActionSheet,UIAlertController等控件的麻烦且没什么意义的代码封装起来;只需要一个api就能做出弹出框,点击弹出框的标记会以block形式传递出来.

###用法

使用 

pod 'BCHAlertView'

1.```UIView+BCHActionSheet```

代码:
```
[UIView bch_showWithTitle:@"title" 
              cancelTitle:@"cancel" 
         destructiveTitle:@"destructiveTitle" 
              otherTitles:@[@"a",@"b",@"c",@"d",@"e"] 
                 callback:^(id sender, NSInteger buttonIndex) {
    NSLog(@"buttonIndex:%ld",buttonIndex);
}];
```
效果:

![image](https://github.com/Baichenghui/BCHAlertView/blob/master/images/a.png)


2.```UIView+BCHAlert ```

代码:
```
[UIView bch_showWithTitle:@"提示" 
                  message:@"确定退出登录?" 
             buttonTitles:@[@"YES",@"NO"] 
                callback:^(id sender, NSUInteger buttonIndex) {
    NSLog(@"buttonIndex:%ld",buttonIndex);
}];
```
效果:

![image](https://github.com/Baichenghui/BCHAlertView/blob/master/images/b.png)


3.```UIAlertController+BCHHelperKitUIKit```

代码:
```
[UIAlertController bch_showWithTitle:@"提示"
                                         message:@"确定退出登录?"
                                    buttonTitles:@[@"YES",@"NO"]
                                  preferredStyle:UIAlertControllerStyleAlert
                                           block:^(UIAlertAction *action, NSUInteger buttonIndex) {
                NSLog(@"buttonIndex:%ld",buttonIndex);
            }];
```
效果:

![image](https://github.com/Baichenghui/BCHAlertView/blob/master/images/c.png)


代码:
```
[UIAlertController bch_showWithTitle:@"提示"
                                         message:@"确定退出登录?"
                                    buttonTitles:@[@"YES",@"NO"]
                                  preferredStyle:UIAlertControllerStyleActionSheet
                                           block:^(UIAlertAction *action, NSUInteger buttonIndex) {
                NSLog(@"buttonIndex:%ld",buttonIndex);
            }];
```
效果:

![image](https://github.com/Baichenghui/BCHAlertView/blob/master/images/d.png)
