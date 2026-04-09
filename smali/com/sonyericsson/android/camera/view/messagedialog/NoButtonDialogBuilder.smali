.class public Lcom/sonyericsson/android/camera/view/messagedialog/NoButtonDialogBuilder;
.super Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;
.source "NoButtonDialogBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0

    .line 38
    new-instance p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$KeyEventKiller;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$KeyEventKiller;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 42
    iget-object p1, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->titleResourceID:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 43
    iget-object p1, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p0, p7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {p0, p8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    iget-object p1, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    iget-object p2, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object p0

    return-object p0
.end method
