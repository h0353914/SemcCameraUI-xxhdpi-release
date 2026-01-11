.class public Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
.super Ljava/lang/Object;
.source "ModeLoader.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;,
        Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;
    }
.end annotation


# instance fields
.field private mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/Mode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static updatePluginsDatabase(Landroid/content/Context;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 119
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public addModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->load()V

    return-void
.end method

.method public findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;
    .locals 2

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    if-nez v0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public load()V
    .locals 22

    move-object/from16 v0, p0

    .line 78
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->values()[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Normal:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;-><init>(Landroid/content/Context;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;)V

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v15, v2, v4

    .line 85
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v5}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->isSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    new-instance v14, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    .line 88
    invoke-virtual {v5}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v8

    iget v9, v15, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->iconId:I

    iget v10, v15, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->textId:I

    sget-object v16, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Photo:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/16 v19, 0x1

    move-object v5, v14

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move-object/from16 v21, v15

    move/from16 v15, v19

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v21

    invoke-direct/range {v5 .. v18}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V

    move-object/from16 v5, v20

    .line 86
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->setLocalCapturingMode(Ljava/util/List;)V

    .line 98
    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->startLoadTask()V

    return-void
.end method

.method public onCapturingModeListChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 54
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V

    goto :goto_1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->isLensMode(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    new-instance v2, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V

    goto :goto_1

    .line 60
    :cond_1
    new-instance v2, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V

    .line 64
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mModes:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;->onModeListChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public removeModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->mCapturingModeListLoader:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->release()V

    return-void
.end method
