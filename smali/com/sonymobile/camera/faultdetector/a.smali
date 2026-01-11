.class Lcom/sonymobile/camera/faultdetector/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final b:Ljava/lang/String; = "AES"

.field private static final c:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a([B)Ljavax/crypto/SecretKey;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v4, "AES/CBC/PKCS7Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/sonymobile/camera/faultdetector/a;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/a;->a([B)Ljavax/crypto/SecretKey;

    move-result-object p2

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p2, Ljavax/crypto/CipherInputStream;

    invoke-direct {p2, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p2, v3}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljavax/crypto/CipherInputStream;->close()V

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, v0

    move-object v2, p0

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-object v0

    :catchall_2
    move-exception p1

    :goto_2
    move-object v0, v2

    :goto_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    throw p1
.end method
