.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;
    }
.end annotation


# static fields
.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field public static final MAX_CONTENT_NUMBER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ContentsViewController"

.field private static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

.field private mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

.field private mClickable:Z

.field private final mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

.field private mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

.field private mHandler:Landroid/os/Handler;

.field private mIsCoreCamera:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mOrientation:I

.field private final mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

.field private mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

.field private final mUpdateContentTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentLoader(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecurityLevel(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateContentTaskList(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSecurityLevelByKeyguardLockedState(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getSecurityLevelByKeyguardLockedState()Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    .line 88
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 106
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    .line 107
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 124
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 125
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {v0, p2, p3, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    const v0, 0x7f0900ad

    .line 126
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 127
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    .line 129
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 131
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    .line 133
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    .line 135
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    return-void
.end method

.method private getSecurityLevelByKeyguardLockedState()Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    .line 701
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 705
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    :goto_0
    return-object p0
.end method

.method private removeExcessiveView(I)V
    .locals 5

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 231
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 232
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 233
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .locals 3

    .line 419
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "searchPallet() has been called. requestId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", child = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 420
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 422
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 423
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 424
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "searchPallet() pallet find. index = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private startAnimationInner(Landroid/view/animation/Animation;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 387
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "Animation started."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addContent(ILandroid/net/Uri;)V
    .locals 2

    .line 274
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addContent() has been called. requestId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-nez v0, :cond_1

    return-void

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 284
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 285
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_1

    .line 283
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public clearContents()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 510
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    return-void
.end method

.method public clearProvisionalContentFrame(I)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->clearProvisionalContent()V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    return-void
.end method

.method public createContentFrame()I
    .locals 1

    .line 171
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createContentFrame() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    return v0
.end method

.method public createEmptyContentFrame()I
    .locals 4

    .line 186
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createEmptyContentFrame() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 189
    const-string p0, "Activity has already been released at createEmptyContentFrame."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 194
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_2

    .line 196
    const-string p0, "could not get inflater."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->getNext()I

    move-result v1

    .line 201
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createEmptyContentFrame : create pallet. id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const v2, 0x7f0c0036

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    goto :goto_0

    :cond_4
    const v2, 0x7f0c0035

    .line 207
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 209
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    .line 211
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-nez v2, :cond_5

    .line 212
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    .line 215
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    return v1
.end method

.method public createProvisionalContentFrame()I
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result v0

    .line 249
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setProvisionalContent()V

    .line 252
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeExcessiveView(I)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    return v0
.end method

.method public disableClick()V
    .locals 1

    .line 557
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disableClick() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->disableClick()V

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    return-void
.end method

.method public enableClick()V
    .locals 1

    .line 551
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "enableClick() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->enableClick()V

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    return-void
.end method

.method public getCurrentContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 2

    .line 625
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getCurrentContent() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 630
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    if-nez p0, :cond_2

    .line 632
    const-string p0, "getCurrentContent() pallet(0) is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1

    .line 635
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p0

    return-object p0

    .line 627
    :cond_3
    :goto_0
    const-string p0, "getCurrentContent() mContentContainer has no content."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1
.end method

.method public getCurrentRequestId()I
    .locals 2

    .line 643
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getCurrentRequestId() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    if-nez p0, :cond_2

    .line 650
    const-string p0, "getCurrentRequestId() pallet(0) is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 653
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result p0

    return p0

    .line 645
    :cond_3
    :goto_0
    const-string p0, "getCurrentRequestId() mContentContainer has no content."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1
.end method

.method public getLocalContentInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public grayOut()V
    .locals 2

    .line 337
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "grayOut()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setAlpha(F)V

    .line 340
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-eqz v0, :cond_1

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->disableClick()V

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 1

    .line 350
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "hide()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    return-void
.end method

.method public isLoading()Z
    .locals 3

    .line 438
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasLoadingContent() has been called. child = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 440
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 441
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 443
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 445
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isLoading() pallet is loading. index = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public isLoadingInProvisionalContent()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 459
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 461
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->isProvisionalContent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 473
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onContentCreated( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 476
    const-string p0, "Activity has already been released."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result p1

    .line 489
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 491
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V

    .line 492
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeExcessiveView(I)V

    .line 495
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    if-eqz p0, :cond_4

    .line 496
    invoke-interface {p0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;->onThumbnailCreated(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    :cond_4
    return-void
.end method

.method public onNoContentLoaded()V
    .locals 0

    .line 505
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    return-void
.end method

.method public onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
    .locals 0

    return-void
.end method

.method public onStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .locals 0

    .line 516
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_0

    const-string p3, "onStorageStateChanged"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 517
    :cond_0
    new-instance p3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;

    invoke-direct {p3, p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 1

    .line 139
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "pause() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz p0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    :cond_1
    return-void
.end method

.method public reconstructLocalCache(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 604
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 605
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->setNewIntentFromActivity()V

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadLocalCache()V

    .line 608
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 609
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeInvalidLocalCache(Landroid/content/Context;)V

    .line 610
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reloadTopContent()V

    return-void
.end method

.method public release()V
    .locals 5

    .line 146
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->release()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;

    .line 156
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 158
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 161
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    return-void

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public reload()V
    .locals 2

    .line 308
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "reload() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 311
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reload(I)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public remove()V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    return-void
.end method

.method public requestCreateContentInfoSync(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 300
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->requestCreateContentInfoSync(Ljava/util/ArrayList;)V

    return-void
.end method

.method public requestLastContentLoading(I)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->requestLastDataLoad(I)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->requestLayout()V

    return-void
.end method

.method public saveLocalCache()V
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->saveLocalCache()V

    return-void
.end method

.method public setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V
    .locals 1

    .line 563
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "setClickThumbnailProgressListener"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 565
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 568
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    goto :goto_0

    .line 570
    :cond_1
    new-instance p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    :goto_0
    return-void
.end method

.method public setNewIntentFromActivity()V
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->setNewIntentFromActivity()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 360
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    .line 362
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 327
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "show()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setAlpha(F)V

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    .line 331
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-eqz v0, :cond_1

    .line 332
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->enableClick()V

    :cond_1
    return-void
.end method

.method public showProgress(I)V
    .locals 3

    .line 534
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showProgress() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 535
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object p1

    if-eqz p1, :cond_2

    const v0, 0x7f0900a9

    .line 537
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 540
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    .line 544
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "progress = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentsViewController"

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 544
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public startHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    .line 375
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimationInner(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopAnimation(Z)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 403
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 405
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 406
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    const-string p1, "Animation canceled."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 407
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method
