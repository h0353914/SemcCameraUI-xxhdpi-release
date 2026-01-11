.class Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;
.super Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashNotSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V
    .locals 1

    .line 323
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$PhotoLightIn-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashNotSupported;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method


# virtual methods
.method public getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 0
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

    const/4 p0, 0x0

    .line 336
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 0
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

    .line 327
    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 328
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0

    .line 330
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    filled-new-array {p0, p1}, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0
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

    .line 341
    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 342
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 344
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object p0
.end method
