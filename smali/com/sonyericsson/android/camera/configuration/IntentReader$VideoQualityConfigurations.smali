.class public Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;
.super Ljava/lang/Object;
.source "IntentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/IntentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoQualityConfigurations"
.end annotation


# static fields
.field private static final EXTRA_VIDEO_QUALITY_LOW:I


# instance fields
.field public final hasSizeLimit:Z

.field public final maxDuration:J

.field public final maxFileSize:J

.field public final quality:I


# direct methods
.method public constructor <init>(JJIZ)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->maxFileSize:J

    .line 50
    iput-wide p3, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->maxDuration:J

    .line 51
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->quality:I

    .line 52
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->hasSizeLimit:Z

    return-void
.end method


# virtual methods
.method public isQualityLow()Z
    .locals 0

    .line 62
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;->quality:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
