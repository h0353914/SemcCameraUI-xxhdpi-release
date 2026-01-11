.class public Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextTimedOutMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    }
.end annotation


# static fields
.field private static final FADE_OUT_DURATION:I = 0x3e8

.field private static final SHOW_DURATION:I = 0x1388


# instance fields
.field private final mIsToast:Z

.field private final mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 127
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->-$$Nest$fgetmIsToast(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mIsToast:Z

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mTransparentBackground:Z

    return-void
.end method

.method public static createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HintTextTimedOutMessage:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFadeDuration()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public getMessageString()Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->-$$Nest$fgetmMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 159
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->-$$Nest$fgetmMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->-$$Nest$fgetmMessageString(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->-$$Nest$fgetmPriority(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimedOutDuration()J
    .locals 2

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public isToast()Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->-$$Nest$fgetmIsToast(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z

    move-result p0

    return p0
.end method
