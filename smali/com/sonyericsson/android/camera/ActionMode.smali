.class public Lcom/sonyericsson/android/camera/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# instance fields
.field public final mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public final mIsOneShot:Z

.field public final mType:I


# direct methods
.method public constructor <init>(ZILcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    .line 30
    iput p2, p0, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    .line 31
    iput-object p3, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method
