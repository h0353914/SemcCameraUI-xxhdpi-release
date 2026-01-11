.class final enum Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4;
.super Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V

    .line 53
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getEditActivityClassName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const-string v2, "Edit activity must be null"

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->-$$Nest$smcheckArgument(ZLjava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getInteractActivityClassName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    const-string v2, "Interact activity must be null"

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->-$$Nest$smcheckArgument(ZLjava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->getLaunchActivityClassName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string p0, "Launch activity must not be null"

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->-$$Nest$smcheckArgument(ZLjava/lang/String;)V

    return-void
.end method
