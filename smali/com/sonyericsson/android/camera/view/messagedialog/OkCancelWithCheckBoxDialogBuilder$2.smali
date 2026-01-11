.class Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;
.super Ljava/lang/Object;
.source "OkCancelWithCheckBoxDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder;->create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder;

.field final synthetic val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;

.field final synthetic val$localActivity:Landroid/app/Activity;

.field final synthetic val$localListenerNegative:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder;Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;->val$localActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;->val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;->val$localListenerNegative:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;->val$localActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;->val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkCancelWithCheckBoxDialogBuilder$2;->val$localListenerNegative:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
