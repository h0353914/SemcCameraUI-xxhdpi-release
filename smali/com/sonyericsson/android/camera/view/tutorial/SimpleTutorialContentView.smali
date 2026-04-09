.class public Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;
.super Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.source "SimpleTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$ShortTutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;
    }
.end annotation


# instance fields
.field protected mTutorialDescription:Landroid/widget/TextView;

.field protected mTutorialIcon:Landroid/widget/ImageView;

.field protected mTutorialTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getContent()Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    if-eqz v0, :cond_1

    const-class v0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected onLayoutToLandscape()V
    .locals 1

    const v0, 0x7f09004d

    .line 56
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialTitle:Landroid/widget/TextView;

    const v0, 0x7f090048

    .line 57
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialDescription:Landroid/widget/TextView;

    const v0, 0x7f09004a

    .line 58
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialIcon:Landroid/widget/ImageView;

    .line 60
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToLandscape()V

    return-void
.end method

.method protected onLayoutToPortrait()V
    .locals 1

    const v0, 0x7f09004e

    .line 65
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialTitle:Landroid/widget/TextView;

    const v0, 0x7f090049

    .line 66
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialDescription:Landroid/widget/TextView;

    const v0, 0x7f09004c

    .line 67
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialIcon:Landroid/widget/ImageView;

    .line 69
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToPortrait()V

    return-void
.end method

.method protected onUpdateViewContent()V
    .locals 4

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->getContent()Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0901ac

    .line 80
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901a4

    .line 81
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialTitle:Landroid/widget/TextView;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;->mTitleResourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;->mTitleResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialDescription:Landroid/widget/TextView;

    iget v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;->mDescriptionResourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialDescription:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;->mDescriptionResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialDescription:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialDescription:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView;->mTutorialIcon:Landroid/widget/ImageView;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SimpleTutorialContent;->mIconResourceId:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
