.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$2;
.super Ljava/lang/Object;
.source "CameraSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 66
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x50

    if-eq p2, p1, :cond_0

    const/16 p1, 0x1b

    if-ne p2, p1, :cond_1

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->dismissAllowingStateLoss()V

    .line 69
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
