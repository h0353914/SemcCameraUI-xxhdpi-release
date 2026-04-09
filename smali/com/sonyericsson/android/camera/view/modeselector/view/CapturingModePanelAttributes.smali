.class public Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;
.super Ljava/lang/Object;
.source "CapturingModePanelAttributes.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
    }
.end annotation


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mIconUri:Ljava/lang/String;

.field private mModeName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mActivityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mActivityName:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mIconUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mIconUri:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mTitle:Ljava/lang/String;

    .line 27
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mDescription:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mIconUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mDescription:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 71
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 72
    :cond_2
    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 74
    iget-object v2, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 78
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 79
    iget-object p0, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    if-eqz p0, :cond_6

    return v1

    .line 80
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mIconUri:Ljava/lang/String;

    return-object p0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapturingModePanelAttributes [mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mModeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
