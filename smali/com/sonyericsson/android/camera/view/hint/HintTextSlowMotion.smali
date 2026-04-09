.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextSlowMotion.java"


# instance fields
.field private final mNameId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 22
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;->mNameId:I

    return-void
.end method


# virtual methods
.method public getButtonDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getButtonMessageResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMessageDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMessageResourceId()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;->mNameId:I

    return p0
.end method
