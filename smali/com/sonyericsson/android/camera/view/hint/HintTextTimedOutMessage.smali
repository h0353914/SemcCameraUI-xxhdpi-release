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

    .line 68
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$000(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mIsToast:Z

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mTransparentBackground:Z

    return-void
.end method

.method public static createTag(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getButtonMessageResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getFadeDuration()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public getMessageResourceId()I
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$200(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I

    move-result p0

    return p0
.end method

.method public getPriority()Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mType:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->access$100(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 76
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

    .line 81
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;->mIsToast:Z

    return p0
.end method
