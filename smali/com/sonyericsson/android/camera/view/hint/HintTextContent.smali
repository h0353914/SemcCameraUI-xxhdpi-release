.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.super Ljava/lang/Object;
.source "HintTextContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;,
        Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    }
.end annotation


# static fields
.field public static final INFINITE_TIMEOUT_MILLIS:J = -0x1L

.field public static final MESSAGE_LINES:I = 0x3

.field public static final NO_FADE:I = -0x1


# instance fields
.field protected mNeedResetMsgPadding:Z

.field protected mTransparentBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mNeedResetMsgPadding:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setContent(Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    .line 46
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 47
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public detach(Lcom/sonyericsson/android/camera/view/hint/HintTextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->getVisibility()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 132
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    if-eqz v0, :cond_0

    .line 133
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

.method public getFadeDuration()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLeftButtonDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLeftButtonResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMessageDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMessageLines()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getMessageListener()Landroid/view/View$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getMessageString()Ljava/lang/String;
.end method

.method public getMessageWrapType()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNext()Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 37
    sget-object p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method public getRightButtonDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getRightButtonResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSubMessage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 108
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

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isNeedResetMsgPadding()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mNeedResetMsgPadding:Z

    return p0
.end method

.method public isToast()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTransparentBackground()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;->mTransparentBackground:Z

    return p0
.end method
