.class public abstract Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;
.super Ljava/lang/Object;
.source "CameraIdArrayValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;


# static fields
.field private static final INLALID_VALUE:Ljava/lang/String; = "N/A"

.field private static final SEPARATOR:C = ','


# instance fields
.field protected final mValues:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;


# direct methods
.method public varargs constructor <init>([Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;->mValues:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method private getValue()Ljava/lang/String;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;->mValues:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;->mValues:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;->mValues:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->getCameraDeviceIdApi1()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_2
    const-string p0, "N/A"

    return-object p0
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/status/CameraIdArrayValue;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
