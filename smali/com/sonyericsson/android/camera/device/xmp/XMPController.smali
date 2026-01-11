.class public Lcom/sonyericsson/android/camera/device/xmp/XMPController;
.super Ljava/lang/Object;
.source "XMPController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addXMPInfo([BII)[B
    .locals 5

    .line 20
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->generateXmpFromMpo([B)Ljava/util/ArrayList;

    move-result-object v0

    .line 21
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generateXmpFromMpo img size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 23
    new-instance v1, Lcom/sonyericsson/android/camera/device/xmp/GImage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string v4, "image/jpeg"

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/device/xmp/GImage;-><init>([BLjava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->createGDepth([B)Lcom/sonyericsson/android/camera/device/xmp/GDepth;

    move-result-object v0

    .line 25
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->setRoi(Landroid/graphics/Rect;)V

    .line 26
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/XMPController;->embedGDepthAndBayerInClearSight([BLcom/sonyericsson/android/camera/device/xmp/GImage;Lcom/sonyericsson/android/camera/device/xmp/GDepth;)[B

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    const-string p1, "No bokeh info"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object p0
.end method

.method private static embedGDepthAndBayerInClearSight([BLcom/sonyericsson/android/camera/device/xmp/GImage;Lcom/sonyericsson/android/camera/device/xmp/GDepth;)[B
    .locals 12

    .line 33
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "embedGDepthInClearSight"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 39
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 41
    const-string v2, "Mime"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "http://ns.google.com/photos/1.0/depthmap/"

    if-eqz p2, :cond_3

    .line 42
    :try_start_0
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_2

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "gDepth info, format: %s, near: %d, far: %d, mine: %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFormat()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 45
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getNear()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    .line 46
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFar()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    .line 47
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getMime()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    .line 43
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 42
    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 48
    :cond_2
    const-string v7, "Format"

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v7, "Near"

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getNear()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v7, "Far"

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getFar()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v7, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getMime()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v2, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_3
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v7, :cond_4

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "gDepth getMime"

    aput-object v8, v7, v4

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getRoi()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 58
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_5

    new-array v8, v3, [Ljava/lang/String;

    const-string v9, "gDepth roi info: "

    aput-object v9, v8, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 59
    :cond_5
    const-string v8, "RoiX"

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v6, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v8, "RoiY"

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v6, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v8, "RoiWidth"

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v6, v8, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v8, "RoiHeight"

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v8, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :cond_6
    const-string v7, "http://ns.google.com/photos/1.0/image/"

    if-eqz p1, :cond_8

    .line 66
    :try_start_1
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_7

    new-array v3, v3, [Ljava/lang/String;

    const-string v8, "add GImage data: "

    aput-object v8, v3, v4

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/GImage;->getMime()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/GImage;->getMime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v7, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :cond_8
    invoke-static {}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 78
    :try_start_2
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_9

    new-array v3, v5, [Ljava/lang/String;

    const-string v8, "prepare extendXmpMeta data"

    aput-object v8, v3, v4

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :cond_9
    const-string v3, "Data"

    if-eqz p1, :cond_b

    .line 80
    :try_start_3
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v8, :cond_a

    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "add extend GImage data"

    aput-object v9, v8, v4

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 81
    :cond_a
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/GImage;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v7, v3, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    if-eqz p2, :cond_d

    .line 85
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_c

    new-array p1, v5, [Ljava/lang/String;

    const-string v5, "create extend GDepth data"

    aput-object v5, p1, v4

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_c
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/device/xmp/GDepth;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v6, v3, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    const-string p2, "create extended XMPMeta error"

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_d
    :goto_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    invoke-static {p1, p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/utils/XmpUtil;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 96
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 98
    :cond_e
    const-string p0, "embedGDepthInClearSight failure "

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p0

    .line 72
    const-string p1, "create XMPMeta error"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 35
    :cond_f
    :goto_1
    const-string p0, "clearSightImageBytes is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0
.end method
