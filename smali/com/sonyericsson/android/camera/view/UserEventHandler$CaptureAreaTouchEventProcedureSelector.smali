.class Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureAreaTouchEventProcedureSelector"
.end annotation


# instance fields
.field private final mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

.field private final mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

.field private final mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

.field private final mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

.field private final mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 2

    .line 1300
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    .line 1301
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    .line 1303
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    .line 1305
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    .line 1307
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    .line 1309
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p1, v1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .locals 0

    .line 1300
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1314
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1315
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    return-object p0

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4700(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    return-object p0

    .line 1321
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    return-object p0

    .line 1325
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1326
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    return-object p0

    .line 1328
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    return-object p0
.end method


# virtual methods
.method doCancel()V
    .locals 0

    .line 1350
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doCancel()V

    return-void
.end method

.method doClick(Landroid/graphics/Point;)V
    .locals 0

    .line 1342
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doClick(Landroid/graphics/Point;)V

    return-void
.end method

.method doLongClick(Landroid/graphics/Point;)V
    .locals 0

    .line 1346
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doLongClick(Landroid/graphics/Point;)V

    return-void
.end method

.method doTouchAreaScaleReady()V
    .locals 0

    .line 1354
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaleReady()V

    return-void
.end method

.method doTouchAreaScaling(F)V
    .locals 0

    .line 1358
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaling(F)V

    return-void
.end method

.method doTouchDown()V
    .locals 0

    .line 1334
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchDown()V

    return-void
.end method

.method doTouchUp(Landroid/graphics/Point;)V
    .locals 0

    .line 1338
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchUp(Landroid/graphics/Point;)V

    return-void
.end method
