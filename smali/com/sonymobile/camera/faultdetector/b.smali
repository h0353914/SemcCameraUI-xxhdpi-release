.class Lcom/sonymobile/camera/faultdetector/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/camera/faultdetector/b$c;,
        Lcom/sonymobile/camera/faultdetector/b$b;,
        Lcom/sonymobile/camera/faultdetector/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Decryptor"

.field private static final b:Lcom/sonymobile/camera/faultdetector/b$a;

.field private static final c:Lcom/sonymobile/camera/faultdetector/b$a;

.field private static final d:Z


# instance fields
.field private e:[B

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sonymobile/camera/faultdetector/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/camera/faultdetector/b$b;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    new-instance v0, Lcom/sonymobile/camera/faultdetector/b$c;

    invoke-direct {v0, v1}, Lcom/sonymobile/camera/faultdetector/b$c;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/b;->c:Lcom/sonymobile/camera/faultdetector/b$a;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/camera/faultdetector/b;->d:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sonyericsson.sdo.appid.141"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->e:[B

    const-string v0, "-12710-52-72-5542293-419-95-1113968-305398414"

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/b;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/Application;)Ljava/io/InputStream;
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/camera/faultdetector/b;->g:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/sonymobile/camera/faultdetector/R$raw;->data3:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/sonymobile/camera/faultdetector/R$raw;->data4:I

    :goto_0
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sonymobile/camera/faultdetector/b;->c:Lcom/sonymobile/camera/faultdetector/b$a;

    invoke-virtual {v0}, Lcom/sonymobile/camera/faultdetector/b$a;->a()[B

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/b;->b:Lcom/sonymobile/camera/faultdetector/b$a;

    invoke-virtual {v1}, Lcom/sonymobile/camera/faultdetector/b$a;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/b;->e:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/camera/faultdetector/b;->a([B[B[B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/camera/faultdetector/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/camera/faultdetector/b;->g:Z

    return-object v0
.end method

.method private a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/a;)Ljava/lang/String;
    .locals 4

    const-string v0, "Decryptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/b;->a()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2, p0, v2}, Lcom/sonymobile/camera/faultdetector/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :cond_0
    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_3
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_0
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_8
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p2

    goto :goto_3

    :catch_0
    :try_start_9
    const-string p2, "Failed to read encrypt key."

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_2
    if-eqz p1, :cond_4

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_4
    if-eqz p0, :cond_7

    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    :goto_3
    :try_start_c
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz p1, :cond_5

    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_e
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_f
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception p2

    if-eqz p0, :cond_6

    :try_start_10
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception p0

    :try_start_11
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw p2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_1

    :catch_1
    const-string p0, "No permission to decrypt."

    goto :goto_6

    :catch_2
    const-string p0, "Failed to get encrypt key."

    :goto_6
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a([B[B[B)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/sonymobile/securedatamanager/SecureDataManager;->getSecureData([B[B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/b;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sonymobile/securedatamanager/SecureDataManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to get secure key."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Decryptor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/sonymobile/camera/faultdetector/b;->d:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sonymobile/camera/faultdetector/GetSecureDataException;

    invoke-direct {p0, p2}, Lcom/sonymobile/camera/faultdetector/GetSecureDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a([S)[B
    .locals 0

    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/b;->b([S)[B

    move-result-object p0

    return-object p0
.end method

.method private static b([S)[B
    .locals 3

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-short v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Application;I)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lcom/sonymobile/camera/faultdetector/a;

    invoke-direct {v0}, Lcom/sonymobile/camera/faultdetector/a;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/sonymobile/camera/faultdetector/a;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
