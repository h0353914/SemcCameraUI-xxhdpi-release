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
.field public final isReadMore:Z

.field public final tutorialTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;",
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
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;",
            ">;Z)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->tutorialTypes:Ljava/util/List;

    .line 125
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->isReadMore:Z

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;
    .locals 2

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$4;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$DisplayTrigger:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->EYE_GUIDE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :pswitch_4
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_0
    new-instance p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;-><init>(Ljava/util/List;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createByReadMore(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;
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
