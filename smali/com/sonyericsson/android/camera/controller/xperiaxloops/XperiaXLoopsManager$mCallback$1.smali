.class public final Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1;
.super Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback$Stub;
.source "XperiaXLoopsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sonyericsson/android/camera/controller/xperiaxloops/XperiaXLoopsManager$mCallback$1",
        "Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback$Stub;",
        "hide",
        "",
        "b",
        "",
        "show",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/sonymobile/xperiaxloops/IXperiaXLoopsServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public show()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
