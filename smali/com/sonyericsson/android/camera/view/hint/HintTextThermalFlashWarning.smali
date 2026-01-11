.class public Lcom/sonyericsson/android/camera/view/hint/HintTextThermalFlashWarning;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextThermalFlashWarning.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextThermalFlashWarning;->mNeedResetMsgPadding:Z

    return-void
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f0179

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 25
    sget-object p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method
