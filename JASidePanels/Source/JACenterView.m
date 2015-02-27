//
//  JACenterView.m
//  Pods
//
//  Created by Jose Manuel Sánchez Peñarroja on 26/2/15.
//
//

#import "JACenterView.h"

@interface JACenterView()

@property (nonatomic) CALayer *cornerRadiusLayer;

@end

@implementation JACenterView

- (instancetype)init
{
	self = [super init];
	if (self) {
		[self baseInit];
	}
	return self;
}

- (instancetype) initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		[self baseInit];
	}
	return self;
}

- (void) baseInit {
//	UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:0.0f];
//	self.layer.shadowPath = shadowPath.CGPath;
//	self.layer.shadowColor = [UIColor blackColor].CGColor;
//	self.layer.shadowRadius = 2.0f;
//	self.layer.shadowOpacity = 0.55f;
//	self.clipsToBounds = NO;

	_cornerRadiusLayer = [CALayer layer];
	_cornerRadiusLayer.frame = self.bounds;
	_cornerRadiusLayer.cornerRadius = 6.0f;
	_cornerRadiusLayer.masksToBounds = YES;
	[self.layer addSublayer:_cornerRadiusLayer];
}

- (void) setBackgroundColor:(UIColor *)backgroundColor {
	_cornerRadiusLayer.backgroundColor = backgroundColor.CGColor;
}

- (UIColor *) backgroundColor {
	return [UIColor colorWithCGColor:_cornerRadiusLayer.backgroundColor];
}

- (void) layoutSubviews {
	[super layoutSubviews];
	_cornerRadiusLayer.frame = self.bounds;
}

@end
