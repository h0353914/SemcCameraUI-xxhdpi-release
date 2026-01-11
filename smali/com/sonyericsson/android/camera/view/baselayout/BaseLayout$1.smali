.class Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;
.super Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic initView()Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;->initView()Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    move-result-object p0

    return-object p0
.end method
