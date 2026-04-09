.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;
.super Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setupDraggingEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/content/Context;II)V
    .locals 0

    .line 2015
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private getModeIndexUnder(Landroid/view/MotionEvent;)I
    .locals 1

    .line 2239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2243
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/ApplicationNavigator;

    move-result-object p0

    .line 2244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 2243
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ApplicationNavigator;->getModeIndexUnder(II)I

    move-result p0

    return p0
.end method

.method private getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 0

    .line 2277
    sget-object p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 2303
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 2299
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 2295
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 2291
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 2287
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 2283
    :pswitch_4
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 2279
    :pswitch_5
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
    .locals 2

    .line 2248
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    .line 2250
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$controller$AbstractDraggingEventHandler$Direction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 2264
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 2254
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected canDragging()Z
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    .line 2226
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 2228
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getModeIndexUnder(Landroid/view/MotionEvent;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 2230
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    goto :goto_0

    .line 2233
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    :goto_0
    return-void
.end method

.method protected sendCancelEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
    .locals 5

    .line 2191
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2192
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2195
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2196
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_4

    .line 2197
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 2200
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 2201
    new-instance v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2207
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2208
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showViews()V

    .line 2212
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_6

    .line 2213
    :cond_5
    new-instance p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2218
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2219
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    :cond_6
    return-void
.end method

.method protected sendFinishEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
    .locals 7

    .line 2127
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2128
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2132
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2133
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_6

    .line 2134
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 2138
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2139
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 2138
    invoke-static {v3, v4, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2140
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 2138
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 2141
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v4, :cond_4

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2141
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    if-ne v0, v3, :cond_5

    .line 2145
    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    goto :goto_0

    .line 2147
    :cond_5
    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2149
    :goto_0
    new-instance v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v6, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-direct {v5, v6, v4, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2156
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2158
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2161
    sget-object v1, Lcom/sonyericsson/android/camera/util/PerfLog;->SWIPE_ANIMATION_START:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 2164
    :cond_6
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_7

    .line 2165
    new-instance v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2170
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2171
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    .line 2174
    :cond_7
    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v1, :cond_8

    .line 2175
    new-instance p1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 2180
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-direct {p1, v1, v3, v0, v4}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2182
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 2183
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 2184
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    :cond_8
    return-void
.end method

.method protected sendProgressEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;IF)V
    .locals 4

    .line 2088
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2089
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2093
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_7

    .line 2094
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 2098
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    if-lez p2, :cond_4

    .line 2101
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2102
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->previous()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    goto :goto_0

    .line 2105
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2106
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->next()Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    if-ne v0, v1, :cond_6

    return-void

    .line 2115
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v2, v0, v1, p2, p3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/NavigatorContents;IF)V

    .line 2119
    :cond_7
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_8

    if-gez p2, :cond_8

    .line 2120
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, p3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;F)V

    :cond_8
    return-void
.end method

.method protected sendStartEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
    .locals 7

    .line 2031
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2032
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->isModeChangingEnable(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2037
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_5

    .line 2038
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 2042
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2043
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/NavigatorContents;->valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v4

    .line 2042
    invoke-static {v3, v4, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$4000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2044
    invoke-static {v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    .line 2042
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getCapturingMode(Lcom/sonyericsson/android/camera/NavigatorContents;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    if-ne v0, v3, :cond_4

    return v2

    .line 2051
    :cond_4
    new-instance v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2056
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2057
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    .line 2064
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 2068
    :cond_6
    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v3, :cond_7

    .line 2069
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->getSwitchTargetMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    .line 2070
    new-instance v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;

    sget-object v4, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-direct {v3, v4, v5, v0, p1}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;-><init>(Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2075
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2076
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_START_TRANSITION_OPERATION:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return v1

    :cond_7
    return v2
.end method

.method protected sendTouchDownEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 2024
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2025
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$6;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->clearToastContent()V

    :cond_0
    return-void
.end method
