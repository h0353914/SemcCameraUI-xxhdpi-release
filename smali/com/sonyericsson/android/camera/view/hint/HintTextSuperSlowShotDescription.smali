.class public Lcom/sonyericsson/android/camera/view/hint/HintTextSuperSlowShotDescription;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;
.source "HintTextSuperSlowShotDescription.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Landroid/content/Context;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    const v1, 0x7f0f0424

    .line 24
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "960"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0f0427

    .line 22
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILjava/lang/String;)V

    return-void
.end method
