.class public Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.super Ljava/lang/Object;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;,
        Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LedOptionsResolver"

.field private static sInstance:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# instance fields
.field private mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmResolver(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmResolver(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->sInstance:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Unsolved-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
    .locals 1

    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->sInstance:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    return-object v0
.end method


# virtual methods
.method public getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFrontFlash()Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDefaultFrontFlash()Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 71
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Flash;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 48
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 49
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0
.end method

.method public getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 56
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    return-object p0
.end method

.method public getParameterKeyTextId()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getParameterKeyTextId()I

    move-result p0

    return p0
.end method

.method public getParameterKeyTitleTextId()I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getParameterKeyTitleTextId()I

    move-result p0

    return p0
.end method

.method public getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ActionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->mResolver:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    return-object p0
.end method
