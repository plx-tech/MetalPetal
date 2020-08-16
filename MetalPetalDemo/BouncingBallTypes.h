//
//  BouncingBallTypes.h
//  MetalPetalDemo
//
//  Created by YuAo on 2020/8/16.
//  Copyright © 2020 MetalPetal. All rights reserved.
//

#ifndef BouncingBallTypes_h
#define BouncingBallTypes_h

#include <simd/simd.h>

struct ParticleData {
    simd_float2 position;
    simd_float2 speed;
    float size;
};

#endif /* BouncingBallTypes_h */
