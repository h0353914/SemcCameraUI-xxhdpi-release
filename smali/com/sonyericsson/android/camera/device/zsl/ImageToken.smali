.class public Lcom/sonyericsson/android/camera/device/zsl/ImageToken;
.super Ljava/lang/Object;
.source "ImageToken.java"


# static fields
.field private static final INVALID_TOKEN:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;


# instance fields
.field private final mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;-><init>(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->INVALID_TOKEN:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;

    return-void
.end method

.method public static invalidToken()Lcom/sonyericsson/android/camera/device/zsl/ImageToken;
    .locals 1

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->INVALID_TOKEN:Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    return-object v0
.end method


# virtual methods
.method public isValid()Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recycle()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;->onTokenRecycled(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageToken{mListener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
