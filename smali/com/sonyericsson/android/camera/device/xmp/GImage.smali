.class public Lcom/sonyericsson/android/camera/device/xmp/GImage;
.super Ljava/lang/Object;
.source "GImage.java"


# static fields
.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/image/"

.field public static final PREFIX:Ljava/lang/String; = "GImage"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"


# instance fields
.field private mData:Ljava/lang/String;

.field private mMime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mMime:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mData:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mMime:Ljava/lang/String;

    return-void
.end method

.method private saveAsJPEG([B)V
    .locals 5

    .line 63
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v0, "depthI"

    if-eqz p0, :cond_0

    const-string p0, "saveAsJPEG img"

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 64
    :cond_0
    new-instance p0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdcard/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_img.JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    array-length p0, p1

    invoke-virtual {v3, p1, v1, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_0
    const/4 p1, 0x2

    .line 70
    :try_start_3
    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 74
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_2

    .line 74
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 79
    :cond_2
    :goto_3
    throw p0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public getMime()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/GImage;->mMime:Ljava/lang/String;

    return-object p0
.end method
