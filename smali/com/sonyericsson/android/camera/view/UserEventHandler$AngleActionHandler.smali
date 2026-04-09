.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;
.super Ljava/lang/Object;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AngleActionHandler"
.end annotation


# instance fields
.field private mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

.field private mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

.field private mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

.field private mSideTouchScrollDistance:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 2098
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .locals 0

    .line 2098
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z
    .locals 0

    .line 2098
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareKeyZooming(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->stopZooming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->switchFrontAngle()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->preparePinchZooming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z
    .locals 0

    .line 2098
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performPinchZooming(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSideTouchZoom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;I)V
    .locals 0

    .line 2098
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->updateSideTouchZoomStrength(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)I
    .locals 0

    .line 2098
    iget p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I

    return p0
.end method

.method static synthetic access$6800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;[Ljava/lang/Object;)Z
    .locals 0

    .line 2098
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performKeyZooming()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z
    .locals 0

    .line 2098
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7100(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z
    .locals 0

    .line 2098
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->finishZoom()Z

    move-result p0

    return p0
.end method

.method private clear()V
    .locals 2

    .line 2261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->stop()V

    .line 2263
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    .line 2265
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2266
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    return-void
.end method

.method private finishZoom()Z
    .locals 3

    .line 2248
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2251
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_FINISH:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method private getFrontAngleStep(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)I
    .locals 4

    .line 2305
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne p1, p0, :cond_0

    .line 2306
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 2307
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getWideZoomTargetRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p0

    .line 2308
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 2309
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    float-to-double p0, p1

    sub-double/2addr p0, v2

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x405e000000000000L    # 120.0

    mul-double/2addr v0, p0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHandling()Z
    .locals 1

    .line 2257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private performFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z
    .locals 2

    const/4 v0, 0x1

    .line 2218
    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->getFrontAngleStep(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private performKeyZooming()Z
    .locals 3

    const/4 v0, 0x1

    .line 2210
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private performPinchZooming(F)Z
    .locals 2

    const/4 v0, 0x1

    .line 2206
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->performZoom([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private varargs performZoom([Ljava/lang/Object;)Z
    .locals 4

    .line 2222
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2226
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result v0

    .line 2228
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-interface {v2, v3, p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;->calculate(Lcom/sonyericsson/android/camera/view/angle/VariableIndex;[Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2230
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result p1

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 2233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PERFORM:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_2
    return p1
.end method

.method private prepareFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z
    .locals 3

    .line 2185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAngleEventReceivable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2192
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/angle/FrontAngleChangeCalculator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    .line 2193
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/16 v2, 0x78

    .line 2196
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->getFrontAngleStep(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)I

    move-result p1

    invoke-direct {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(III)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private prepareKeyZooming(Z)Z
    .locals 2

    .line 2137
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/view/angle/KeyZoomStepCalculator;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2139
    new-instance p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    .line 2140
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v0, 0x21

    new-instance v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private preparePinchZooming()Z
    .locals 1

    .line 2115
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/angle/PinchZoomStepCalculator;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result p0

    return p0
.end method

.method private prepareSideTouchZoom()Z
    .locals 3

    .line 2119
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/SideTouchZoomStepCalculator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/angle/SideTouchZoomStepCalculator;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2120
    iput v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I

    .line 2121
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    .line 2122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v1, 0x21

    new-instance v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private prepareZoom(Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;)Z
    .locals 4

    .line 2154
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->isHandling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2158
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2159
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3900(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2165
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isAngleEventReceivable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2166
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCalculator:Lcom/sonyericsson/android/camera/view/angle/VariableIndex$Calculator;

    .line 2167
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getZoom()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2169
    new-instance v0, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    const/16 v2, 0x78

    const/high16 v3, 0x42f00000    # 120.0f

    .line 2172
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-direct {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;-><init>(III)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    .line 2174
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ZOOM_PREPARE:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    aput-object p0, v3, v1

    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v2

    :cond_2
    return v1

    .line 2161
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyZoomOperationRejected()V

    return v1
.end method

.method private stopZooming()Z
    .locals 0

    .line 2241
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->finishZoom()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private switchFrontAngle()V
    .locals 5

    .line 2270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 2272
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareFrontAngleChange(Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2273
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3400(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 2275
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->CROPPED:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 2278
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$4600(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 2279
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$3200(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v2

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ANGLE_CHANGE_START:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2281
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    .line 2282
    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->access$6000(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2284
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    .line 2285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mEventTicker:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;

    const/16 v2, 0x21

    new-instance v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$3;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$3;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V

    :cond_1
    return-void
.end method

.method private updateSideTouchZoomStrength(I)V
    .locals 0

    .line 2214
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mSideTouchScrollDistance:I

    return-void
.end method


# virtual methods
.method protected getCurrentAngle()I
    .locals 0

    .line 2317
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->mCurrentVariable:Lcom/sonyericsson/android/camera/view/angle/VariableIndex;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/angle/VariableIndex;->getIndex()I

    move-result p0

    return p0
.end method
