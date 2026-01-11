.class public abstract Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextSlowMotionDescription.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mNameId:I

.field private final mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field private final mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 35
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    .line 36
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mNameId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRightButtonDescriptionResourceId()I
    .locals 0

    const p0, 0x7f0f010f

    return p0
.end method

.method public getRightButtonResourceId()I
    .locals 0

    const p0, 0x7f080184

    return p0
.end method

.method public getSubMessage()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getTutorialType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-object p0
.end method
