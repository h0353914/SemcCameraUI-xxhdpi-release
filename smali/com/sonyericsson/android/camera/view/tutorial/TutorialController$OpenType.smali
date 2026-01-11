.class public Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;
.super Ljava/lang/Object;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenType"
.end annotation


# instance fields
.field public final isFeatureListType:Z

.field public final isReadMore:Z

.field public final tutorialTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;Z)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->tutorialTypes:Ljava/util/List;

    .line 111
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;ZZ)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->tutorialTypes:Ljava/util/List;

    .line 118
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    .line 119
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isFeatureListType:Z

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;
    .locals 2

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$4;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$DisplayTrigger:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->EYE_GUIDE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_4
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideBarSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 130
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_5
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->TRIPLE_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_1
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method public static createByReadMore(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;
    .locals 2

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method
