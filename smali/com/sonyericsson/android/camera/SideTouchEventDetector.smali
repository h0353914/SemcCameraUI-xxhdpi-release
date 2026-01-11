.class public Lcom/sonyericsson/android/camera/SideTouchEventDetector;
.super Ljava/lang/Object;
.source "SideTouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;,
        Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;,
        Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;,
        Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;,
        Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    }
.end annotation


# static fields
.field private static final mIsZoomEnabled:Z = false


# instance fields
.field private final mDynamicAreaFilter:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

.field private final mOnSideTouchGestureListener:Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

.field private mOrientation:I

.field private final mSideTouchGestureDetector:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnSideTouchGestureListener(Lcom/sonyericsson/android/camera/SideTouchEventDetector;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mOnSideTouchGestureListener:Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInSideTouchValidArea(Lcom/sonyericsson/android/camera/SideTouchEventDetector;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->isInSideTouchValidArea(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-direct {v0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mDynamicAreaFilter:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    .line 140
    new-instance v0, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    new-instance v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener;-><init>(Lcom/sonyericsson/android/camera/SideTouchEventDetector;Lcom/sonyericsson/android/camera/SideTouchEventDetector$CameraSideTouchGestureListener-IA;)V

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;-><init>(Landroid/content/Context;Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mSideTouchGestureDetector:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    .line 142
    iput-object p2, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mOnSideTouchGestureListener:Lcom/sonyericsson/android/camera/SideTouchEventDetector$OnSideTouchGestureListener;

    return-void
.end method

.method private isInSideTouchValidArea(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 338
    iget v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mDynamicAreaFilter:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->getValidScreenHeight(Landroid/view/MotionEvent;)I

    move-result p0

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public onSideTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 151
    iput p2, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mOrientation:I

    .line 152
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mDynamicAreaFilter:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-virtual {p2, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->onSideTouchEvent(Landroid/view/MotionEvent;)V

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mSideTouchGestureDetector:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->onSideTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public unregister()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mSideTouchGestureDetector:Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;

    invoke-virtual {v0}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchGestureDetector;->unregisterSettingsObserver()V

    .line 162
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector;->mDynamicAreaFilter:Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;

    invoke-virtual {p0}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;->unregisterSettingsObserver()V

    return-void
.end method
