.class Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;
.super Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;
.source "LedOptionsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashIn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V
    .locals 1

    .line 247
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method


# virtual methods
.method public getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 0

    .line 319
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 0

    .line 311
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0
.end method

.method public getDefaultFrontFlash()Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .locals 0

    .line 315
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    return-object p0
.end method

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

    .line 279
    iget-object p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->isSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    filled-new-array {p0, p1, p2}, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 281
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 2
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

    .line 251
    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 252
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0

    .line 254
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    filled-new-array {p0, p1, p2, v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    return-object p0
.end method

.method public getFrontFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;
    .locals 2
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

    .line 265
    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 266
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    return-object p0

    .line 268
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    filled-new-array {p0, p1, p2, v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    move-result-object p0

    return-object p0
.end method

.method public getParameterKeyTextId()I
    .locals 0

    const p0, 0x7f0f0233

    return p0
.end method

.method public getParameterKeyTitleTextId()I
    .locals 0

    const p0, 0x7f0f0231

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

    .line 292
    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 293
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 295
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object p0
.end method
