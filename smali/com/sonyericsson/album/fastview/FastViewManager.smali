.class public Lcom/sonyericsson/album/fastview/FastViewManager;
.super Ljava/lang/Object;
.source "FastViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FastViewManager"


# instance fields
.field private final mBitmapManagerClassInstance:Ljava/lang/Object;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mGetBitmapMethod:Ljava/lang/reflect/Method;

.field private mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

.field private mService:Lcom/sonyericsson/album/fastview/IFastViewService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/album/fastview/FastViewUnavailableException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/sonyericsson/album/fastview/FastViewManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/album/fastview/FastViewManager$1;-><init>(Lcom/sonyericsson/album/fastview/FastViewManager;)V

    iput-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mConnection:Landroid/content/ServiceConnection;

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v0, "com.sonyericsson.album"

    .line 81
    invoke-static {p1, v0}, Lcom/sonyericsson/album/fastview/PackageManagerUtil;->getApkPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-direct {p0, p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->getClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/sonyericsson/album/fastview/ReflectionUtil;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    invoke-direct {p0, p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->getMethodName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 86
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/album/fastview/ReflectionUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mGetBitmapMethod:Ljava/lang/reflect/Method;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mBitmapManagerClassInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 89
    :catch_0
    new-instance p0, Lcom/sonyericsson/album/fastview/FastViewUnavailableException;

    invoke-direct {p0}, Lcom/sonyericsson/album/fastview/FastViewUnavailableException;-><init>()V

    throw p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/album/fastview/FastViewManager;Lcom/sonyericsson/album/fastview/IFastViewService;)Lcom/sonyericsson/album/fastview/IFastViewService;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/album/fastview/FastViewManager;)Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    return-object p0
.end method

.method private getClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "com.sonyericsson.album"

    const-string v0, "com.sonyericsson.album.fastview.class"

    .line 178
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/album/fastview/PackageManagerUtil;->getMetadataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMethodName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "com.sonyericsson.album"

    const-string v0, "com.sonyericsson.album.fastview.method"

    .line 183
    invoke-static {p1, p0, v0}, Lcom/sonyericsson/album/fastview/PackageManagerUtil;->getMetadataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cooldown()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    return-void
.end method

.method public getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mGetBitmapMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mBitmapManagerClassInstance:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    .line 170
    :goto_0
    instance-of p1, p0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 171
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public prepare(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    invoke-interface {p0, p1}, Lcom/sonyericsson/album/fastview/IFastViewService;->prepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "FastViewManager"

    const-string p1, "Not in pre-warmed state."

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public prewarm()V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sonyericsson.album"

    const-string v2, "com.sonyericsson.album.fastview.FastViewService"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public setOnPrewarmedListener(Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;)V
    .locals 0
    .param p1    # Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    return-void
.end method
