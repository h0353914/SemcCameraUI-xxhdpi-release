.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;
.super Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSemiAutoControl(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
        "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

.field final synthetic val$brightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

.field final synthetic val$color:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

.field final synthetic val$isCollapsed:Z

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$color:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$brightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$isCollapsed:Z

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
    .locals 8

    .line 915
    new-instance v7, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$600(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$color:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$brightness:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->val$isCollapsed:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SemiAutoControl;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V

    return-object v7
.end method

.method public bridge synthetic initView()Ljava/lang/Object;
    .locals 0

    .line 912
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;->initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    move-result-object p0

    return-object p0
.end method
