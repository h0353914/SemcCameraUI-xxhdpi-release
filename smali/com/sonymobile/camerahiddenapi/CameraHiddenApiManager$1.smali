.class Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "CameraHiddenApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;->this$0:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;->this$0:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    invoke-static {v0}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->-$$Nest$fgetmCallback(Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;)Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.systemui"

    .line 34
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;->this$0:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    invoke-static {p0}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->-$$Nest$fgetmCallback(Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;)Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;->onScreenRecordingStart()V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;->this$0:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    invoke-static {p1}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->-$$Nest$fgetmCallback(Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;)Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager$1;->this$0:Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;

    invoke-static {p0}, Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;->-$$Nest$fgetmCallback(Lcom/sonymobile/camerahiddenapi/CameraHiddenApiManager;)Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/camerahiddenapi/IScreenRecordingCallback;->onScreenRecordingStop()V

    :cond_0
    return-void
.end method
