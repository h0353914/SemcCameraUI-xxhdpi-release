.class public Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;
.super Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
.source "SemiAutoControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;
    }
.end annotation


# instance fields
.field private mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;)V

    .line 26
    new-instance p3, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    invoke-direct {p3, p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    .line 27
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$OnSemiAutoChangeListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl$1;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setOnSemiAutoChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView$OnSemiAutoChangeListener;)V

    .line 28
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    xor-int/lit8 p2, p6, 0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setExpanded(Z)V

    .line 29
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    .line 30
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mBrightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;)Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mColor:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    return-object p0
.end method


# virtual methods
.method public disable()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->disable()V

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->disable()V

    return-void
.end method

.method public enable()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->enable()V

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->enable()V

    return-void
.end method

.method protected onOrientationChanged(I)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setOrientation(I)V

    return-void
.end method

.method protected onVisibilityUpdated()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;->mView:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoControlView;->release()V

    return-void
.end method
