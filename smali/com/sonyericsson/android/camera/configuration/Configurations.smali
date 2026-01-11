.class public Lcom/sonyericsson/android/camera/configuration/Configurations;
.super Ljava/lang/Object;
.source "Configurations.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Configurations"

.field static final sHasShutterKey:Z


# instance fields
.field private mVideoConfig:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    .line 40
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/configuration/Configurations;->sHasShutterKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final preload()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getVideoMaxDurationInMillisecs()J
    .locals 2

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mVideoConfig:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->maxDuration:J

    return-wide v0
.end method

.method public getVideoMaxFileSizeInBytes()J
    .locals 2

    .line 61
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mVideoConfig:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->maxFileSize:J

    return-wide v0
.end method

.method public getVideoQuality()J
    .locals 2

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mVideoConfig:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->quality:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public hasLimitForSizeOrDuration()Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mVideoConfig:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->hasSizeLimit:Z

    return p0
.end method

.method public initInSync(Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mVideoConfig:Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    return-void
.end method
