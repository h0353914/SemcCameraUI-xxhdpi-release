.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;
.super Ljava/lang/Object;
.source "ManualIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnDialogTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->-$$Nest$mupdate(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method
