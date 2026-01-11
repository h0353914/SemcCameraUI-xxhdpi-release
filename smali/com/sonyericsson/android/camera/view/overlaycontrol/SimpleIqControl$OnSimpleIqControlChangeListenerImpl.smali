.class Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;
.super Ljava/lang/Object;
.source "SimpleIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlView$OnSimpleIqControlChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSimpleIqControlChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)V

    return-void
.end method


# virtual methods
.method public onAmberBlueColorChanged(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmColor(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmColor(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object p0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBokehStrengthChanged(I)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBokehStrength(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setBlur(Ljava/lang/String;)V

    .line 140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBokehStrength(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object p0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBrightnessChanged(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBrightness(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBrightness(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object p0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmColor(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmColor(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBrightness(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBrightness(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBokehStrength(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->-$$Nest$fgetmBokehStrength(Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onSemiAutoControlStarted()V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->notifyValueUpdateStart()V

    return-void
.end method

.method public onSemiAutoControlStopped()V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$OnSimpleIqControlChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;->notifyValueUpdateEnd()V

    return-void
.end method

.method public onSemiAutoDisabled()V
    .locals 0

    return-void
.end method

.method public onSemiAutoEnabled()V
    .locals 0

    return-void
.end method
