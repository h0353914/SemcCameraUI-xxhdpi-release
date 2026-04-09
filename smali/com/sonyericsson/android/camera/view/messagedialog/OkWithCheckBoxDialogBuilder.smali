.class public Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder;
.super Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;
.source "OkWithCheckBoxDialogBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4

    .line 45
    new-instance p6, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    invoke-direct {p6, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$KeyEventKiller;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$KeyEventKiller;-><init>()V

    invoke-virtual {p6, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    iget-object v1, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->layoutResourceID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09009d

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    iget-object v2, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->messageResourceID:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f09005f

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 57
    new-instance v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;

    iget-object v3, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 59
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;-><init>(Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/setting/MessageType;)V

    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    iget-object p3, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-boolean p3, p3, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->hasOnCheckBox:Z

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    invoke-virtual {p6, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 65
    invoke-virtual {p6, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 66
    iget-object p2, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->titleResourceID:I

    invoke-virtual {p6, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 68
    check-cast p1, Landroid/app/Activity;

    .line 71
    iget-object p2, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->positiveButtonResourceID:I

    new-instance p3, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;

    invoke-direct {p3, p0, p1, v2, p5}, Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder$1;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/OkWithCheckBoxDialogBuilder;Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder$MessageDialogCheckBoxListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p6, p2, p3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p6, p7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p6, p8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object p0, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    iget-object p1, p4, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->isCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-virtual {p6, p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 86
    invoke-virtual {p6}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object p0

    return-object p0
.end method
