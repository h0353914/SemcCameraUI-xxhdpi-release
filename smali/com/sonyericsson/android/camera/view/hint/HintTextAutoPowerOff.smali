.class public Lcom/sonyericsson/android/camera/view/hint/HintTextAutoPowerOff;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextAutoPowerOff.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f00bd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 35
    sget-object p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method public isTransparentBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
