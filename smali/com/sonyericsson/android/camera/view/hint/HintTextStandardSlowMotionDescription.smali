.class public Lcom/sonyericsson/android/camera/view/hint/HintTextStandardSlowMotionDescription;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;
.source "HintTextStandardSlowMotionDescription.java"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Landroid/content/Context;)V
    .locals 4

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const v1, 0x7f0f029f

    .line 24
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "120"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 23
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0f02a4

    .line 22
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;ILjava/lang/String;)V

    return-void
.end method
