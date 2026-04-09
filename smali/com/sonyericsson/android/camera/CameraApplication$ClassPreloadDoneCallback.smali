.class Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassPreloadDoneCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraApplication;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/CameraApplication$1;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;-><init>(Lcom/sonyericsson/android/camera/CameraApplication;)V

    return-void
.end method


# virtual methods
.method public onPreloadDone()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$202(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;)Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread;

    .line 286
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ClassPreloadDoneCallback;->this$0:Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/CameraApplication;->access$302(Lcom/sonyericsson/android/camera/CameraApplication;Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;)Lcom/sonyericsson/android/camera/ClassStaticBlockPreLoadThread$PreloadDoneCallback;

    return-void
.end method
