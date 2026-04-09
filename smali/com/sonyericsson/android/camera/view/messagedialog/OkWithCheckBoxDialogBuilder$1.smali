.class Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;
.super Ljava/lang/Object;
.source "OkWithCheckBoxDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder;->create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder;

.field final synthetic val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;

.field final synthetic val$localActivity:Landroid/app/Activity;

.field final synthetic val$localListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder;Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;->val$localActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;->val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;->val$localListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;->val$localActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;->val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;->val$localListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
