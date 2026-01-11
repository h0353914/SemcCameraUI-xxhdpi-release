.class public Lcom/sonyericsson/idd/api/IddFileUploadManager;
.super Ljava/lang/Object;
.source "IddFileUploadManager.java"


# static fields
.field public static final ERROR_ON_STAGING:I = 0x10

.field public static final ERROR_TIME_LIMIT_EXPIRED:I = 0x20

.field public static final ERROR_UNKNOWN:I = 0xff

.field public static final STATUS_FILE_STAGED:I = 0x10

.field public static final STATUS_UPLOAD_DELAYED:I = 0x30

.field public static final STATUS_UPLOAD_STARTED:I = 0x20

.field public static final STATUS_VALUE_UPLOAD_DELAYED_NO_WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sonyericsson/idd/api/IddFileUploadListener;)V
    .locals 0

    .line 99
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not an implementation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getIddPackageName()Ljava/lang/String;
    .locals 1

    .line 128
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not an implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not an implementation"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public uploadFile(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not an implementation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
