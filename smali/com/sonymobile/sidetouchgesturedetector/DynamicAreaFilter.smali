.class public Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;
.super Ljava/lang/Object;
.source "DynamicAreaFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$HandlerHelper;,
        Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_PX:F = 864.0f

.field private static final DEFAULT_VALUE_INT_DYNAMIC_FILTER_LIMIT_SCALE:I = 0x46

.field private static final DEFAULT_VALUE_INT_DYNAMIC_FILTER_TOP_LIMIT_SCALE:I = 0xa

.field private static final DEFAULT_VALUE_INT_SMOOTH_FACTOR:I = 0x5a

.field private static final DEFAULT_Y_DPI:F = 537.882f

.field private static final DYNAMIC_FILTER_LIMIT_SCALE_URI:Landroid/net/Uri;

.field private static final DYNAMIC_FILTER_TOP_LIMIT_SCALE_URI:Landroid/net/Uri;

.field private static final DYNAMIC_FILTER_TYPE_URI:Landroid/net/Uri;

.field private static final HEIGHT_MARGIN_TOP:I = 0x190

.field private static final INT_DYNAMIC_FILTER_TYPE_HIGH:I = 0x2

.field private static final INT_DYNAMIC_FILTER_TYPE_LOW:I = 0x0

.field private static final INT_DYNAMIC_FILTER_TYPE_MID:I = 0x1

.field public static final KEY_INT_DYNAMIC_FILTER_LIMIT_SCALE:Ljava/lang/String; = "somc.side_sense_dynamic_filer_limit_scale"

.field public static final KEY_INT_DYNAMIC_FILTER_TOP_LIMIT_SCALE:Ljava/lang/String; = "somc.side_sense_dynamic_filer_top_limit_scale"

.field private static final KEY_INT_DYNAMIC_FILTER_TYPE:Ljava/lang/String; = "somc.side_sense_dynamic_filter_type"

.field private static final KEY_INT_SMOOTH_FACTOR:Ljava/lang/String; = "somc.side_sense_smooth_factor"

.field private static final POLLING_DURATION:I = 0x32

.field private static final SMOOTH_FACTOR:F = 0.95f

.field private static final SMOOTH_FACTOR_NOW:F = 0.050000012f

.field private static final SMOOTH_FACTOR_TYPE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "DynamicAreaFilter"

.field private static sSmoothFactor:F = 0.0f

.field private static sSmoothFactorNow:F = 0.0f

.field private static sSuperSmoothFactor:F = 0.995f

.field private static sSuperSmoothFactorNow:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mDeviceYDpi:F

.field private mDynamicFilterType:I

.field private mDynamicLimitScale:I

.field private mDynamicScale:I

.field private mHandler:Landroid/os/Handler;

.field private mLeftMinHeight:I

.field private mLeftMinHeightLPF:I

.field private mLeftMinHeightSuperLPF:I

.field private mLimitScale:I

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

.field private mPollingRunnable:Ljava/lang/Runnable;

.field private mRightMinHeight:I

.field private mRightMinHeightLPF:I

.field private mRightMinHeightSuperLPF:I

.field private mScreenHeight:I

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mTopLimitScale:I

.field private mValidScreenHeightMax:I

.field private mValidScreenHeightMin:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "somc.side_sense_dynamic_filer_top_limit_scale"

    .line 54
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_TOP_LIMIT_SCALE_URI:Landroid/net/Uri;

    const-string v0, "somc.side_sense_dynamic_filer_limit_scale"

    .line 60
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_LIMIT_SCALE_URI:Landroid/net/Uri;

    const-string v0, "somc.side_sense_dynamic_filter_type"

    .line 67
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_TYPE_URI:Landroid/net/Uri;

    const-string v0, "somc.side_sense_smooth_factor"

    .line 72
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->SMOOTH_FACTOR_TYPE_URI:Landroid/net/Uri;

    .line 101
    sget v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSuperSmoothFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    sput v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSuperSmoothFactorNow:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 200
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$1;-><init>(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mPollingRunnable:Ljava/lang/Runnable;

    .line 116
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 200
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$1;-><init>(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mPollingRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    .line 127
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)Landroid/view/MotionEvent;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mMotionEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;Landroid/view/MotionEvent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->calculateValidHeight(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getDynamicFilterTopLimitScale()I

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMin:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getValidScreenHeightMin(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    return-object p0
.end method

.method static synthetic access$1400()Landroid/net/Uri;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_TYPE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicFilterType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getDynamicFilterType()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700()Landroid/net/Uri;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->SMOOTH_FACTOR_TYPE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->setSmoothFactor()V

    return-void
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_LIMIT_SCALE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    return p0
.end method

.method static synthetic access$402(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getDynamicFilterLimitScale()I

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getValidScreenHeightMax(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_TOP_LIMIT_SCALE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mTopLimitScale:I

    return p0
.end method

.method static synthetic access$902(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mTopLimitScale:I

    return p1
.end method

.method private calculateValidHeight(Landroid/view/MotionEvent;)V
    .locals 6

    .line 218
    iget-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCurDown:Z

    if-eqz v0, :cond_c

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    .line 222
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 225
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v2, v2

    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeight:I

    goto :goto_1

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v2, v2

    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeight:I

    .line 236
    :cond_1
    :goto_1
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeight:I

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    if-eq v2, v3, :cond_2

    .line 237
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeight:I

    invoke-static {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getHeightLPF(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    .line 238
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightSuperLPF:I

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeight:I

    invoke-static {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getHeightSuperLPF(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightSuperLPF:I

    .line 240
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    invoke-interface {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;->onLeftMinHeightChanged(I)V

    .line 244
    :cond_2
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeight:I

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    if-eq v2, v3, :cond_3

    .line 245
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeight:I

    invoke-static {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getHeightLPF(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    .line 246
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightSuperLPF:I

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeight:I

    invoke-static {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getHeightSuperLPF(II)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightSuperLPF:I

    .line 248
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    invoke-interface {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;->onRightMinHeightChanged(I)V

    .line 254
    :cond_3
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightSuperLPF:I

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightSuperLPF:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightSuperLPF:I

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_4
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightSuperLPF:I

    goto :goto_2

    :goto_3
    const/high16 v3, 0x43c80000    # 400.0f

    add-float/2addr v2, v3

    const/high16 v4, 0x42c80000    # 100.0f

    add-float/2addr v2, v4

    mul-float/2addr v2, v4

    .line 259
    iget v5, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 260
    iget v5, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    if-le v5, v2, :cond_5

    goto :goto_4

    :cond_5
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    :goto_4
    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicLimitScale:I

    .line 262
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    if-eqz v2, :cond_6

    .line 263
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    iget v5, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicLimitScale:I

    invoke-interface {v2, v5}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;->onDynamicLimitScaleChanged(I)V

    .line 267
    :cond_6
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    iget v5, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    if-ge v2, v5, :cond_7

    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    :goto_5
    int-to-float v2, v2

    goto :goto_6

    :cond_7
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    goto :goto_5

    :goto_6
    add-float/2addr v2, v3

    mul-float/2addr v4, v2

    .line 272
    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    float-to-int v2, v4

    .line 273
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->isDynamicLimitUsed()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicLimitScale:I

    goto :goto_7

    :cond_8
    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    :goto_7
    if-le v3, v2, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    .line 274
    :goto_8
    iput v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicScale:I

    .line 275
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    if-eqz v2, :cond_a

    .line 276
    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mOnDynamicAreaListener:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;

    iget v3, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicScale:I

    invoke-interface {v2, v3}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$OnDynamicAreaListener;->onDynamicScaleChanged(I)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 279
    :cond_b
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->startPolling()V

    :cond_c
    return-void
.end method

.method private changeLimitScaleForDevice()I
    .locals 2

    .line 303
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDeviceYDpi:F

    const/high16 v1, 0x44580000    # 864.0f

    mul-float/2addr v1, v0

    const v0, 0x44067873

    div-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 304
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private getDynamicFilterLimitScale()I
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc.side_sense_dynamic_filer_limit_scale"

    const/16 v2, 0x46

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->changeLimitScaleForDevice()I

    move-result v0

    :cond_0
    return v0
.end method

.method private getDynamicFilterTopLimitScale()I
    .locals 2

    .line 309
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "somc.side_sense_dynamic_filer_top_limit_scale"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getDynamicFilterType()I
    .locals 2

    .line 330
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "somc.side_sense_dynamic_filter_type"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getHeightLPF(II)I
    .locals 1

    int-to-float p0, p0

    .line 286
    sget v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactor:F

    mul-float/2addr p0, v0

    int-to-float p1, p1

    sget v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactorNow:F

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static getHeightSuperLPF(II)I
    .locals 1

    int-to-float p0, p0

    .line 290
    sget v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSuperSmoothFactor:F

    mul-float/2addr p0, v0

    int-to-float p1, p1

    sget v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSuperSmoothFactorNow:F

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getSmoothFactor()I
    .locals 2

    .line 316
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "somc.side_sense_smooth_factor"

    const/16 v1, 0x5a

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getValidScreenHeightMax(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 421
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getValidScreenHeightMin(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 426
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 131
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mHandler:Landroid/os/Handler;

    const-string v0, "window"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mWindowManager:Landroid/view/WindowManager;

    .line 134
    iget-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 135
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 137
    iget p1, v0, Landroid/graphics/Point;->y:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/Point;->x:I

    :goto_0
    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    .line 139
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDeviceYDpi:F

    .line 143
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getDynamicFilterTopLimitScale()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mTopLimitScale:I

    .line 144
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mTopLimitScale:I

    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getValidScreenHeightMin(I)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMin:I

    .line 146
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getDynamicFilterLimitScale()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    .line 147
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    invoke-direct {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getValidScreenHeightMax(I)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    .line 149
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getDynamicFilterType()I

    move-result p1

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicFilterType:I

    .line 150
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->registerSettingsObserver()V

    .line 152
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->setSmoothFactor()V

    .line 154
    sget-object p1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".init sSmoothFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " screenSize.x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " screenSize.y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mScreenHeight="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mLimitScale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLimitScale:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDynamicFilterType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicFilterType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mValidScreenHeightMin="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMin:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mValidScreenHeightMax="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    .line 165
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    .line 166
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightSuperLPF:I

    .line 167
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    iput p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightSuperLPF:I

    return-void
.end method

.method private isDynamicLimitUsed()Z
    .locals 2

    .line 335
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicFilterType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicFilterType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isFingerSideDisabled()Z
    .locals 1

    .line 340
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicFilterType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortrait()Z
    .locals 1

    .line 431
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private registerSettingsObserver()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 346
    new-instance v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$2;-><init>(Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 366
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_LIMIT_SCALE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_TOP_LIMIT_SCALE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 370
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->DYNAMIC_FILTER_TYPE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->SMOOTH_FACTOR_TYPE_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private setSmoothFactor()V
    .locals 1

    .line 321
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getSmoothFactor()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 322
    sput p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactor:F

    .line 323
    sget p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactor:F

    const v0, 0x3f7d70a4    # 0.99f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    .line 324
    sput v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactor:F

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 326
    sget v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactor:F

    sub-float/2addr p0, v0

    sput p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->sSmoothFactorNow:F

    return-void
.end method

.method private startPolling()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mPollingRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$HandlerHelper;->access$200(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mPollingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopPolling()V
    .locals 1

    .line 214
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValidScreenHeight(Landroid/view/MotionEvent;)I
    .locals 3

    .line 397
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->isFingerSideDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 400
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    if-le v0, v2, :cond_1

    return v1

    .line 404
    :cond_0
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeightLPF:I

    iget v2, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeightLPF:I

    if-ge v0, v2, :cond_1

    return v1

    .line 410
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 411
    iget v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMin:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    return v1

    .line 415
    :cond_2
    iget p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mDynamicScale:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 416
    iget p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mScreenHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public onSideTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 177
    iput-object p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mMotionEvent:Landroid/view/MotionEvent;

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 181
    iput-boolean v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCurDown:Z

    .line 183
    iget v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    iput v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mLeftMinHeight:I

    .line 184
    iget v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mValidScreenHeightMax:I

    iput v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mRightMinHeight:I

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->startPolling()V

    goto :goto_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->stopPolling()V

    :goto_0
    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mCurDown:Z

    .line 196
    iget-object p0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public unregisterSettingsObserver()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->stopPolling()V

    return-void
.end method
