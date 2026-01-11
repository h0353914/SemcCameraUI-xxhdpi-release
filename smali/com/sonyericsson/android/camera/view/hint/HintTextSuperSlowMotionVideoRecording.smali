.class public Lcom/sonyericsson/android/camera/view/hint/HintTextSuperSlowMotionVideoRecording;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;
.source "HintTextSuperSlowMotionVideoRecording.java"


# instance fields
.field private final mIsDone:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x7f0f0430

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0431

    .line 22
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotion;-><init>(I)V

    .line 25
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSuperSlowMotionVideoRecording;->mIsDone:Z

    return-void
.end method

.method public static createTag(Z)Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HintTextSuperSlowMotionVideoRecording:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextSuperSlowMotionVideoRecording;->mIsDone:Z

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextSuperSlowMotionVideoRecording;->createTag(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
