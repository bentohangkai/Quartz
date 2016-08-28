//
//  MJView.m
//  Quarz2D
//
//  Created by liuhangkai on 16/8/26.
//  Copyright © 2016年 liuhangkai. All rights reserved.
//

#import "MJView.h"

@implementation MJView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)drawRect:(CGRect)rect{
    
    [self basicOperation];
    
    
}

-(void)basicOperation{
    //获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx);//将当前上下文的状态 放入到栈中
    
    //2.拼接图形路径
    CGContextMoveToPoint(ctx, 10, 10);
    
    CGContextAddLineToPoint(ctx, 100, 100);//绘制第二条线
    
    CGContextAddLineToPoint(ctx, 100, 200);
    
    CGContextClosePath(ctx); //关闭路劲
    
    CGContextSetLineWidth(ctx, 14);
    
    // [[UIColor blueColor] set];
    
    CGContextSetRGBStrokeColor(ctx, 1.0, 0, 0, 1);
    //3.渲染显示到view上面  空心的
    
    CGContextStrokePath(ctx);
    
    // 实心的
    // CGContextFillPath(ctx);
    
    CGContextRestoreGState(ctx);//从栈底中取出 默认的上下文
    
    //画四边形
    
    CGContextAddRect(ctx, CGRectMake(50, 50, 150, 50));
    CGContextStrokePath(ctx);
    
    //画圆
    CGContextAddArc(ctx, 60, 60, 60, 0, M_PI_2 , 1);
    //CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
    
    //画椭圆
    CGContextAddEllipseInRect(ctx, CGRectMake(200, 200, 60, 100));
    CGContextStrokePath(ctx);
    
    //画贝塞尔曲线
    
    CGContextMoveToPoint(ctx, 50, 200);
    CGContextAddQuadCurveToPoint(ctx, 175, 175, 300, 200);
    
    
    CGContextStrokePath(ctx);
    

}

@end
