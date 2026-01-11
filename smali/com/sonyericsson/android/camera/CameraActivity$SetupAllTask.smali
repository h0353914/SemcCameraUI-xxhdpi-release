.class Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupAllTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1121
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$SetupAllTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$msetupAll(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method
