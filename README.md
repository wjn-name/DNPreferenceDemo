# DNPreferenceDemo
本地存储之Preference偏好设置

###用途
偏好设置是专门用来保存应用程序的配置信息的，一般不要在偏好设置中保存其他数据。
偏好设置是以key-value的方式进行存储和读写，使用到一个单例对象NSUserDefaults

###使用方法

      // 获取NSUserDefaults文件
        NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
        [userDefault setObject:@"wjn" forKey:@"name"];
        [userDefault setBool:YES forKey:@"vip"];
        [userDefault setInteger:18 forKey:@"age"];
        // 立即同步
        [userDefault synchronize];
        
        NSString *name = [userDefault objectForKey:@"name"];
        BOOL vip = [userDefault boolForKey:@"vip"];
        NSInteger age = [userDefault integerForKey:@"age"];
        NSLog(@"name : %@, vip : %d, age : %d",name, vip, (int)age);


###注意事项
1)在需要立即存入数据的情况下需要紧跟synchronize方法,否则系统指不定会在什么时候才存入
2)偏好设置会将所有数据保存到同一个文件中, 如果相同key存入则会覆盖以前的数据




















