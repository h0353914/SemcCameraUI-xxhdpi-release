.class abstract Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
.source "SimpleTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleTutorialContent"
.end annotation


# instance fields
.field protected mDescriptionResourceId:I

.field protected mIconResourceId:I

.field protected mTitleResourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getPages()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getTutorialContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .locals 0

    return-object p0
.end method

.method protected isSimpleTutorialContent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
