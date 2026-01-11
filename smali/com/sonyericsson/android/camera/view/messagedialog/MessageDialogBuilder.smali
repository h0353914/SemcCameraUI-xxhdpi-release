.class public abstract Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;
.super Ljava/lang/Object;
.source "MessageDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end method
