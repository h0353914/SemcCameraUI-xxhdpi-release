.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;
.super Ljava/lang/Object;
.source "ManualIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideStarted()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->notifyValueUpdateStart()V

    return-void
.end method

.method public onSlideStopped()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->notifyValueUpdateEnd()V

    return-void
.end method
