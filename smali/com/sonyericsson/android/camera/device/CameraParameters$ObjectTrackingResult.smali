.class public Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectTrackingResult"
.end annotation


# instance fields
.field public mIsLost:Z

.field public mRectOfTrackedObject:Landroid/graphics/Rect;


# direct methods
.method protected constructor <init>(Landroid/graphics/Rect;Z)V
    .locals 0

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    .line 770
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    return-void
.end method
