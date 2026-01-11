.class public Lcom/sonymobile/securedatamanager/SecureDataManager;
.super Ljava/lang/Object;


# static fields
.field public static final PERMISSION_SECUREDATAMANAGER:Ljava/lang/String; = "com.sonymobile.permission.SECURE_DATA_MANAGER"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSecureData([B[B[B)[B
    .locals 0

    const-class p0, Lcom/sonymobile/securedatamanager/SecureDataManager;

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not an implementation"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
