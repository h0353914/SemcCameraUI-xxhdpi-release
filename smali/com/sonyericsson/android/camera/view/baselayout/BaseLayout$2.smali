.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;
.super Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupManualIqControl(Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V
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

.field final synthetic val$capturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

.field final synthetic val$exposure:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

.field final synthetic val$focusRange:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

.field final synthetic val$focusRangeValue:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

.field final synthetic val$iso:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

.field final synthetic val$onTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$shutterSpeed:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

.field final synthetic val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

.field final synthetic val$uiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

.field final synthetic val$whiteBalance:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$uiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$onTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$capturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$focusRange:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p8, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$shutterSpeed:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p9, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$iso:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p10, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$exposure:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p11, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$whiteBalance:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p12, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$focusRangeValue:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;
    .locals 15

    .line 926
    new-instance v14, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$uiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->-$$Nest$fgetmViewFinderRect(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->-$$Nest$fgetmScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$onTabAvailableListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$capturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$focusRange:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$shutterSpeed:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$iso:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v11, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$exposure:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v12, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$whiteBalance:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v13, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$focusRangeValue:Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V

    return-object v14
.end method

.method public bridge synthetic initView()Ljava/lang/Object;
    .locals 0

    .line 922
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    move-result-object p0

    return-object p0
.end method
