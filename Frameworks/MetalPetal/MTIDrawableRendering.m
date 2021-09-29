//
//  MTIDrawableRendering.m
//  Pods
//
//  Created by YuAo on 01/07/2017.
//
//

#import "MTIDrawableRendering.h"

@implementation MTIDrawableRenderingRequest

- (instancetype)initWithDrawableProvider:(id<MTIDrawableProvider>)drawableProvider resizingMode:(MTIDrawableRenderingResizingMode)resizingMode drawImmediately:(BOOL)drawImmediately {
    if (self = [super init]) {
        _drawableProvider = drawableProvider;
        _resizingMode = resizingMode;
        _drawImmediately = drawImmediately;
    }
    return self;
}

- (instancetype)initWithDrawableProvider:(id<MTIDrawableProvider>)drawableProvider resizingMode:(MTIDrawableRenderingResizingMode)resizingMode {
    if (self = [super init]) {
        _drawableProvider = drawableProvider;
        _resizingMode = resizingMode;
        _drawImmediately = YES;
    }
    return self;
}

@end

@implementation MTKView (MTIDrawableProvider)

- (id<MTLDrawable>)drawableForRequest:(MTIDrawableRenderingRequest *)request {
    return self.currentDrawable;
}

- (MTLRenderPassDescriptor *)renderPassDescriptorForRequest:(MTIDrawableRenderingRequest *)request {
    return self.currentRenderPassDescriptor;
}

@end
