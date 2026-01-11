.class public final Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$ShortTutorialContent;
.source "SimpleTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SaveLocationTutorialContent"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$ShortTutorialContent;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getCurrentTutorialPageInfo()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;->getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
    .locals 1

    .line 187
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    return-object p0
.end method

.method protected getTutorialTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected setupResource()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$ShortTutorialContent;->setupResource()V

    const v0, 0x7f0f034c

    .line 175
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;->mTitleResourceId:I

    const v0, 0x7f0f034d

    .line 176
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;->mDescriptionResourceId:I

    const v0, 0x7f08027c

    .line 177
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;->mIconResourceId:I

    return-void
.end method
