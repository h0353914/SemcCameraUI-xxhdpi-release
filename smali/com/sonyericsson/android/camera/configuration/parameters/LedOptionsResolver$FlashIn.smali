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

    .line 208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$Resolver;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver$FlashIn;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;)V

    return-void
.end method


# virtual methods
.method public getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 0

    .line 263
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 0

    .line 258
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

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

    .line 226
    iget-object p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->isSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    .line 230
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    aput-object v0, p0, p2

    const/4 p2, 0x1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    aput-object v0, p0, p2

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    aput-object p2, p0, p1

    return-object p0

    .line 228
    :cond_1
    :goto_0
    new-array p0, p2, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

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

    .line 212
    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_0

    .line 213
    new-array p0, p1, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0

    :cond_0
    const/4 p0, 0x5

    .line 215
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v0, p0, p1

    const/4 p1, 0x1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v0, p0, p1

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object p1, p0, p2

    const/4 p1, 0x3

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object p2, p0, p1

    const/4 p1, 0x4

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object p2, p0, p1

    return-object p0
.end method

.method public getParameterKeyTextId()I
    .locals 0

    const p0, 0x7f0f0172

    return p0
.end method

.method public getParameterKeyTitleTextId()I
    .locals 0

    const p0, 0x7f0f0170

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

    .line 239
    iget p0, p1, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 240
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 242
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object p0
.end method
