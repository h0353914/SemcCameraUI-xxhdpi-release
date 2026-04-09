.class Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory;
.super Ljava/lang/Object;
.source "TutorialFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
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
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;"
        }
    .end annotation

    .line 27
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;-><init>(ILjava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .locals 2

    .line 43
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialFactory$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 105
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$OneShotSlowTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$OneShotSlowTutorialContent;-><init>(I)V

    goto :goto_0

    .line 100
    :pswitch_0
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$VideoFusionTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$VideoFusionTutorialContent;-><init>(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;-><init>(I)V

    goto :goto_0

    .line 90
    :pswitch_2
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$StandardSlowTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$StandardSlowTutorialContent;-><init>(I)V

    goto :goto_0

    .line 85
    :pswitch_3
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$OneShotSlowTutorialContent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x3c0

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$OneShotSlowTutorialContent;-><init>(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :pswitch_4
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SuperSlowTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SuperSlowTutorialContent;-><init>(I)V

    goto :goto_0

    .line 74
    :pswitch_5
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SuperSlowMoreOptionsTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SuperSlowMoreOptionsTutorialContent;-><init>(I)V

    goto :goto_0

    .line 69
    :pswitch_6
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$HandShutterTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$HandShutterTutorialContent;-><init>(I)V

    goto :goto_0

    .line 64
    :pswitch_7
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;-><init>(I)V

    goto :goto_0

    .line 60
    :pswitch_8
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$DualCameraTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$DualCameraTutorialContent;-><init>(I)V

    goto :goto_0

    .line 55
    :pswitch_9
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PredictiveLaunchTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PredictiveLaunchTutorialContent;-><init>(I)V

    goto :goto_0

    .line 50
    :pswitch_a
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;-><init>(I)V

    goto :goto_0

    .line 45
    :pswitch_b
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/SimpleTutorialContentView$SaveLocationTutorialContent;-><init>(I)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
