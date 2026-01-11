.class Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;
.super Ljava/lang/Object;
.source "CameraExtensionServiceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCameraStatusTask"
.end annotation


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Landroid/content/ContentValues;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$mgetService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Lcom/sonymobile/cameracommon/ICameraExtensionService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/ICameraExtensionService;->updateCameraStatus(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera extension service updateCameraStatus failed ContentValues = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$UpdateCameraStatusTask;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
