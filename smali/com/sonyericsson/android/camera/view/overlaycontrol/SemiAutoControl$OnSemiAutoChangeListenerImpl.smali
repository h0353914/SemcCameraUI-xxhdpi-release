.class Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;
.super Ljava/lang/Object;
.source "SemiAutoControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSemiAutoChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)V

    return-void
.end method


# virtual methods
.method public onAmberBlueColorChanged(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

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

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

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

.method public onSemiAutoControlStarted()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->notifyValueUpdateStart()V

    return-void
.end method

.method public onSemiAutoControlStopped()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->notifyValueUpdateEnd()V

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

.method public onSemiAutoReset()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;->reset()Ljava/lang/Object;

    :cond_1
    return-void
.end method
