.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->prepareCamera(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/setting/UserSettings;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 952
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->-$$Nest$mgetApplicationContext(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckList(Landroid/content/Context;)V

    return-void
.end method
