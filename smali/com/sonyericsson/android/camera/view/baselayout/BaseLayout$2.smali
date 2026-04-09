.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;
.super Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupImageQualityControl(Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;)V
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

.field final synthetic val$iso:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$shutterSpeed:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

.field final synthetic val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

.field final synthetic val$uiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

.field final synthetic val$whiteBalance:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$uiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$capturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$focusRange:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$shutterSpeed:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p8, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$iso:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p9, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$exposure:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iput-object p10, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$whiteBalance:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;
    .locals 13

    .line 888
    new-instance v12, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$uiSettings:Lcom/sonyericsson/android/camera/setting/UiControlSettings;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    .line 889
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$500(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->access$600(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$stateListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$capturingMode:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$focusRange:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$shutterSpeed:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$iso:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$exposure:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    iget-object v11, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->val$whiteBalance:Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;)V

    return-object v12
.end method

.method public bridge synthetic initView()Ljava/lang/Object;
    .locals 0

    .line 884
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;->initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    move-result-object p0

    return-object p0
.end method
