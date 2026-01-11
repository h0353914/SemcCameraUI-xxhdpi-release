.class public Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field public static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final ICON_SIZE_LIMIT_COEFFICIENT:I = 0x2

.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static final NETWORK_TIMEOUT:I = 0xea60

.field public static final RESOURCE_SCHEME:Ljava/lang/String; = "resource"

.field public static final RES_TYPE_NAME_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final RES_TYPE_NAME_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "ResourceUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 250
    new-array v0, v0, [B

    .line 252
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 127
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 128
    const-string v2, "resource"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 131
    invoke-static {p0, p1, v0, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const-string p0, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 133
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getRemoteBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_2
    const-string p0, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 135
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getRemoteBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8

    .line 144
    const-string v0, ", h="

    .line 0
    const-string v1, "Stop loading drawable. The drawable size is too large. Limit size is [w="

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 151
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 152
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    mul-int/lit8 v4, p3, 0x2

    mul-int/lit8 v5, p4, 0x2

    .line 158
    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v4, v6, :cond_1

    iget v6, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v5, v6, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_2

    .line 173
    :try_start_1
    invoke-static {p0, p3, p4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, p1

    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    :try_start_2
    new-array p0, v3, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]. Drawable size is [w="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception p0

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not get drawable. Message : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method private static getRemoteBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Could not open connection. "

    const-string v1, "Malformed URL. "

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 195
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const v5, 0xea60

    .line 198
    :try_start_1
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 207
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 208
    :try_start_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v7, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    :try_start_4
    invoke-static {v5, v7}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 212
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 214
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 215
    array-length v8, v6

    invoke-static {v6, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 221
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v6, :cond_1

    .line 238
    invoke-static {v6, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v6, v4, :cond_2

    .line 240
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 243
    :cond_1
    const-string p0, "Bitmap is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, v4

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v5, v4

    move-object v7, v5

    :goto_1
    if-eqz v5, :cond_3

    .line 218
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v7, :cond_4

    .line 221
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 223
    :cond_4
    throw p1
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_3
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p0, v4

    .line 228
    :goto_2
    :try_start_7
    new-array p2, v3, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p0, :cond_5

    .line 232
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v4

    :catch_3
    move-exception p1

    move-object p0, v4

    .line 225
    :goto_3
    :try_start_8
    new-array p2, v3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz p0, :cond_6

    .line 232
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v4

    :catchall_4
    move-exception p1

    move-object v4, p0

    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    :cond_7
    throw p1
.end method

.method public static getResourceUri(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "resource://"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not get string. Message : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 81
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 92
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 93
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p4, p0, :cond_0

    const/4 p0, 0x1

    .line 94
    new-array p0, p0, [Ljava/lang/String;

    const-string p1, "Loaded string is over limit length."

    const/4 p2, 0x0

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    if-eqz p0, :cond_1

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not get string. Message : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    return-object p3
.end method

.method private static isCorrectResourceType(Landroid/content/res/Resources;ILjava/lang/String;)Z
    .locals 1

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Resource type is not appropriate. Message : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 66
    :goto_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "checkResourceType() : expected="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", actual="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDrawableResource(Landroid/content/res/Resources;I)Z
    .locals 1

    .line 50
    const-string v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isCorrectResourceType(Landroid/content/res/Resources;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isStringResource(Landroid/content/res/Resources;I)Z
    .locals 1

    .line 54
    const-string/jumbo v0, "string"

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isCorrectResourceType(Landroid/content/res/Resources;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
