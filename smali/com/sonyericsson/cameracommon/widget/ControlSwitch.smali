.class public Lcom/sonyericsson/cameracommon/widget/ControlSwitch;
.super Lcom/sonyericsson/cameracommon/widget/Switch;
.source "ControlSwitch.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ControlSwitch"


# instance fields
.field private mIsUpsideDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private reverseChildrenViews(Landroid/view/ViewGroup;)V
    .locals 2

    .line 61
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 67
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized setUiOrientation(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z

    if-eqz p1, :cond_2

    .line 35
    invoke-direct {p0, p0}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->reverseChildrenViews(Landroid/view/ViewGroup;)V

    .line 36
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 37
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 39
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 40
    :try_start_2
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 44
    :cond_1
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z

    if-nez p1, :cond_2

    .line 46
    invoke-direct {p0, p0}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->reverseChildrenViews(Landroid/view/ViewGroup;)V

    .line 47
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mText:Landroid/widget/TextView;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 48
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 49
    :try_start_5
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setRotation(F)V

    .line 50
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 51
    :try_start_6
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 50
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 58
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
