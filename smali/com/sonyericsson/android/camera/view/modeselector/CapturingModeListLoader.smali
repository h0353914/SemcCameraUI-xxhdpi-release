.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;
.super Ljava/lang/Object;
.source "CapturingModeListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;,
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;,
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturingModeListLoader"

.field private static final THREAD_NAME:Ljava/lang/String; = "AddonAppsLoader"


# instance fields
.field private final mCaptureTypeList:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

.field private final mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mLocalModeAttrsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mModeAttrsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private mOnModeListChangedListener:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;

.field private final mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCaptureTypeList(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCaptureTypeList:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapturingModeCollection(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalModeAttrsList(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mLocalModeAttrsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeAttrsList(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mModeAttrsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnModeListChangedListener(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mOnModeListChangedListener:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibilityType(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfilter(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p2}, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCaptureTypeList:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    .line 107
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    .line 109
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mOnModeListChangedListener:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;

    .line 110
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mModeAttrsList:Ljava/util/List;

    .line 111
    const-string p2, "AddonAppsLoader"

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 113
    new-instance p2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$1;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentObserver:Landroid/database/ContentObserver;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    :try_start_0
    sget-object p3, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Guess com.sonymobile.camerauicommon.provider is not exists."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapturingModeListLoader"

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 129
    :goto_0
    new-instance p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;-><init>(Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    return-void
.end method

.method private filter(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 256
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v3

    const v4, 0x7f080086

    if-eq v3, v4, :cond_0

    const v4, 0x7f0800a5

    if-eq v3, v4, :cond_0

    .line 273
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 272
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 276
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 284
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to check whether mode is enabled. Message : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mVisibilityType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    sget-object p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Oneshot:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    if-ne p0, p1, :cond_3

    .line 290
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->sortOneshotCapturingMode(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getCapturingMode(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
    .locals 2

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mModeAttrsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    if-nez v0, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mCapturingModeCollection:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->release()V

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public setLocalCapturingMode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mLocalModeAttrsList:Ljava/util/List;

    return-void
.end method

.method public startLoadTask()V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "start GetTask."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 136
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
