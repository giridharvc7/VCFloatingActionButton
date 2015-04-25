# VCFloatingActionButton
A Floating Action Button inspired from Google inbox for iOS.


![](http://i.imgur.com/yh4MwCB.gif)
## Using this in your project
- Import the VCFloatingActionButton to your project
- Use VCFloatingActionButton.h 

**Initialize the button and add it as a subview**
```
VCFloatingActionButton *addButton = [[VCFloatingActionButton alloc]initWithFrame:floatFrame normalImage:[UIImage imageNamed:@"plus"] andPressedImage:[UIImage imageNamed:@"cross"] withScrollview:_dummyTable];
```

**Add Images and label names for the actions**
```
addButton.imageArray = @[@"fb-icon",@"twitter-icon",@"google-icon",@"linkedin-icon"];
addButton.labelArray = @[@"Facebook",@"Twitter",@"Google Plus",@"Linked in"];
```

**Add Optional hide while scrolling**
```
addButton.hideWhileScrolling = YES;
```

**Use Delegate to handle actions**
```
-(void) didSelectMenuOptionAtIndex:(NSInteger)row
```


P.S: This was done in a short time, please feel free to contribute

##License
MIT License

