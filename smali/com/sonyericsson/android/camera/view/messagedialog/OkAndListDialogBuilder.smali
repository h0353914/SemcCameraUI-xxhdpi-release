.class public Lcom/sonyericsson/android/camera/view/messagedialog/OkAndListDialogBuilder;
.super Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;
.source "OkAndListDialogBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0

    .line 44
    new-instance p3, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    invoke-direct {p3, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p6, Lcom/sonyericsson/android/camera/view/messagedialog/KeyEventKiller;

    invoke-direct {p6}, Lcom/sonyericsson/android/camera/view/messagedialog/KeyEventKiller;-><init>()V

    invoke-virtual {p3, p6}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p3, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 48
    iget-object p2, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->titleResourceID:I

    invoke-virtual {p3, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 50
    iget-object p2, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    invoke-virtual {p3, p2, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {p3, p7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {p3, p8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    iget-object p2, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    iget-object p5, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p5, p5, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-virtual {p3, p2, p5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    .line 61
    iget-object p6, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p6, p6, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    const/4 p7, -0x1

    if-eq p6, p7, :cond_0

    .line 62
    iget-object p6, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p6, p6, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_0
    iget-object p6, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mMessageList:Ljava/lang/String;

    if-eqz p6, :cond_1

    .line 68
    iget-object p6, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mMessageList:Ljava/lang/String;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    iget-object p6, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p6, p6, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageFooterResourceID:I

    if-eq p6, p7, :cond_2

    .line 72
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p6, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p6, p6, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageFooterResourceID:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/OkAndListDialogBuilder;->isLargeTextEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_3

    return-object p1

    .line 83
    :cond_3
    iget-object p4, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p4, p4, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->layoutResourceID:I

    invoke-virtual {p0, p4, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 85
    new-instance p1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p3, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    :goto_0
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object p0

    return-object p0
.end method

.method protected isLargeTextEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 105
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
