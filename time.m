#import <Foundation/Foundation.h>

@interface Time : NSObject
{
    int hour;
    int minute;
    int second;
}
- (void)setHour:(int)h;
@end
@implementation Time
- (void)show {
    NSLog(@"%02d",self->hour);
}
- (void)setHour:(int)h {
    self->hour = h;
}
@end
int main(int argc , char * argv[])
{
    @autoreleasepool {
        NSLog(@"Hello World!");
    }
    Time* tm1 = [[Time alloc]init];
    [tm1 setHour:15];
    [tm1 show];
    return 0;
}
