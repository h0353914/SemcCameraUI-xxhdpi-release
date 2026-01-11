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

    .line 1406
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure-IA;)V

    .line 1407
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    .line 1409
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    .line 1411
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    .line 1413
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    .line 1415
    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method private getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
    .locals 2

    .line 1419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1420
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1421
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontVideoCaptureAreaEventProcedure;

    return-object p0

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$misSuperSlowMode(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1425
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mSuperSlow:Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure;

    return-object p0

    .line 1427
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mVideo:Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoCaptureAreaEventProcedure;

    return-object p0

    .line 1431
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1432
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhotoFront:Lcom/sonyericsson/android/camera/view/UserEventHandler$FrontPhotoCaptureAreaEventProcedure;

    return-object p0

    .line 1434
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->mPhoto:Lcom/sonyericsson/android/camera/view/UserEventHandler$PhotoCaptureAreaEventProcedure;

    return-object p0
.end method


# virtual methods
.method doCancel()V
    .locals 0

    .line 1456
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doCancel()V

    return-void
.end method

.method doClick(Landroid/graphics/Point;)V
    .locals 0

    .line 1448
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doClick(Landroid/graphics/Point;)V

    return-void
.end method

.method doLongClick(Landroid/graphics/Point;)V
    .locals 0

    .line 1452
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doLongClick(Landroid/graphics/Point;)V

    return-void
.end method

.method doTouchAreaScaleReady()V
    .locals 0

    .line 1460
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaleReady()V

    return-void
.end method

.method doTouchAreaScaling(F)V
    .locals 0

    .line 1464
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchAreaScaling(F)V

    return-void
.end method

.method doTouchDown()V
    .locals 0

    .line 1440
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchDown()V

    return-void
.end method

.method doTouchUp(Landroid/graphics/Point;)V
    .locals 0

    .line 1444
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;->getCaptureAreaProcedure()Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;->doTouchUp(Landroid/graphics/Point;)V

    return-void
.end method
