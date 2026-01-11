.class Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;
.super Ljava/lang/Object;
.source "SettingMessageDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

.field final synthetic val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;

.field final synthetic val$onCheckStateConfirmedListener:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;

.field final synthetic val$onPositiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;->val$onCheckStateConfirmedListener:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;->val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;

    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;->val$onPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;->val$onCheckStateConfirmedListener:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;->val$checkBoxListener:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;

    .line 96
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnSettingMessageDialogCheckBoxChangeListener;->isItemChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;->onCheckedStateConfirmed(Z)V

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$1;->val$onPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
