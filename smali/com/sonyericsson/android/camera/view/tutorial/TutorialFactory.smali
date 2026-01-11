.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;
.super Ljava/lang/Object;
.source "TutorialFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILjava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;"
        }
    .end annotation

    .line 24
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .locals 1

    .line 40
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    .line 79
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    goto :goto_0

    .line 74
    :pswitch_0
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    goto :goto_0

    .line 69
    :pswitch_1
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureListContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    goto :goto_0

    .line 48
    :pswitch_2
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;

    const/16 v0, 0x3c0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :pswitch_3
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;-><init>(I)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
