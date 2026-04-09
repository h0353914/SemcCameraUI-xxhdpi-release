.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextSlowMotionDescription.java"


# static fields
.field private static final HINT_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mNameId:I

.field private final mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field private final mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 35
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 36
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    .line 37
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

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

    const p0, 0x7f0f00e8

    return p0
.end method

.method public getMessageDescriptionResourceId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMessageResourceId()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    return p0
.end method

.method public getSubMessage()Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getTimedOutDuration()J
    .locals 2

    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public getTutorialType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-object p0
.end method
