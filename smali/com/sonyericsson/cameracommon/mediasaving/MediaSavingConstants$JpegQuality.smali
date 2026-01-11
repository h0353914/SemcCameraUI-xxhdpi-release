.class public Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;
.super Ljava/lang/Object;
.source "MediaSavingConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegQuality"
.end annotation


# static fields
.field public static final ECONOMY:I = 0x55

.field public static final FINE:I = 0x61

.field public static final STANDARD:I = 0x5d


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatformQualityFromCameraProfile(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x61

    goto :goto_0

    :cond_0
    const/16 p0, 0x5d

    goto :goto_0

    :cond_1
    const/16 p0, 0x55

    :goto_0
    return p0
.end method
