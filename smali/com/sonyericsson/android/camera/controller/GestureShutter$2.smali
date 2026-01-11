.class Lcom/sonyericsson/android/camera/controller/GestureShutter$2;
.super Ljava/lang/Object;
.source "GestureShutter.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$2;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$2;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->handleDetectResult(Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;)V

    return-void
.end method
