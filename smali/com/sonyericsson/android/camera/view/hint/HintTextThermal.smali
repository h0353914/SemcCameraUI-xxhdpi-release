.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextThermal;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextThermal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDescriptionResourceId()I
    .locals 0

    const p0, 0x7f0f00e8

    return p0
.end method

.method public getButtonMessageResourceId()I
    .locals 0

    const p0, 0x7f0f00e8

    return p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 16
    sget-object p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method
