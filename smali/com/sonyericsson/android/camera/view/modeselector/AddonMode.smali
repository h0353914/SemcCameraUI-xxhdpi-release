.class public Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;
.super Lcom/sonyericsson/android/camera/view/modeselector/Mode;
.source "AddonMode.java"


# instance fields
.field private final mTag:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 22
    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateId(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mId:Ljava/lang/String;

    return-void
.end method

.method public static generateId(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected generateSmallIconMappingName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getModeName()Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 50
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorLabelId()I

    move-result p0

    .line 49
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectorIconResId()I
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result p0

    return p0
.end method

.method public getTag()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->mTag:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    return-object p0
.end method
