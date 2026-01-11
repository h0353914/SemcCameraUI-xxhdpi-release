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
.method public getMessageString()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;->mNameId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
