#import <Foundation/Foundation.h>
//个人类
@interface Person : NSObject
{
    int age;
    char* name;
}
-(void)show;
-(void)setAge:(int)a setName:(char*)n;
@end

@implementation Person

-(void)show
{
    NSLog(@"name:%s,age:%i",name,age);
}

-(void)setAge:(int)a setName:(char*)n
{
    age =a;
//    strcpy(name,n);
    name = n;
}
@end

//汽车类
@interface Car :NSObject
{
    double speed;
    int wheels;
    Person* onwer;
}
-(void)show;
-(void)setSpeed:(double)s andWheels:(int)w setPeople:(Person*)p;
@end
@implementation Car

-(void)show
{
    NSLog(@"%d轮车以%.2fkm/h速度在跑",wheels,speed);
    NSLog(@"车主信息：");
    [onwer show];
}

-(void)setSpeed:(double)s andWheels:(int)w setPeople:(Person*)p
{
    speed = s;
    wheels = w;
    onwer = p;
}
@end

int main()
{
//    Car* car = [Car new]; // [[Car alloc]init]
//    [car setSpeed:100 andWheels:4];
//    [car show];
//
//    Car* car3 = [Car new];
//    [car3 setSpeed:40 andWheels:3];
//    [car3 show];
    Person* p = [Person new];
    [p setAge:60 setName:"yongze.chen"];
//    [p1 show];
    
    Car* car = [Car new];
    [car setSpeed:40 andWheels:3 setPeople:p];
    [car show];
    
    return 0;
}

