.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.super Ljava/lang/Object;
.source "HintTextContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    }
.end annotation


# static fields
.field public static final INFINITE_TIMEOUT_MILLIS:J = -0x1L

.field public static final NO_FADE:I = -0x1


# instance fields
.field protected mTransparentBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 37
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 38
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 48
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 97
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getButtonDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public abstract getButtonMessageResourceId()I
.end method

.method public getFadeDuration()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMessageDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public abstract getMessageResourceId()I
.end method

.method public getNext()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 28
    sget-object p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method public getSubMessage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimedOutDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isToast()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTransparentBackground()Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    return p0
.end method
