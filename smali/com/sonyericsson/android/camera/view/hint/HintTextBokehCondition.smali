.class public Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;
.super Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.source "HintTextBokehCondition.java"


# instance fields
.field private mResourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mTransparentBackground:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0f00c9

    .line 42
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f00cb

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f00cd

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f00cc

    .line 36
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_0

    :pswitch_4
    const p1, 0x7f0f00ce

    .line 39
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0f00cf

    .line 45
    iput p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .locals 2

    .line 52
    iget v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextBokehCondition;->mResourceId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
