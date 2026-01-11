.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$2;
.super Ljava/lang/Object;
.source "ManualIqControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->-$$Nest$monResetButtonClicked(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;)V

    return-void
.end method
