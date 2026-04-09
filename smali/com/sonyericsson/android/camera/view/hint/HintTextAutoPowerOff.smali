.class public Lcom/sonyericsson/android/camera/view/hint/HintTextAutoPowerOff;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextAutoPowerOff.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonMessageResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMessageResourceId()I
    .locals 0

    const p0, 0x7f0f00aa

    return p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 38
    sget-object p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method public isTransparentBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
