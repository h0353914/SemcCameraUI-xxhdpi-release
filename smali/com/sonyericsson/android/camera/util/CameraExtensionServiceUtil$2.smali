.class Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$2;
.super Ljava/lang/Object;
.source "CameraExtensionServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->unBindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$2;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$2;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$mstopService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    return-void
.end method
