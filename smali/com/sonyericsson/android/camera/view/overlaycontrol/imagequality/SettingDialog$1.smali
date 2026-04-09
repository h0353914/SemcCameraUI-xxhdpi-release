.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog$1;
.super Ljava/lang/Object;
.source "SettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingDialog;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
