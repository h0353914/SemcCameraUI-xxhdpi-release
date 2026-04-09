.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    }
.end annotation


# static fields
.field public static final MAX_CONTENT_NUMBER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ContentsViewController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

.field private mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

.field private mClickable:Z

.field private final mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

.field private mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

.field private mHandler:Landroid/os/Handler;

.field private mIsCoreCamera:Z

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
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 117
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {v0, p2, p3, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;-><init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    const v0, 0x7f090072

    .line 118
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    .line 121
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 123
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    .line 125
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    .line 127
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Landroid/app/Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private removeExcessiveView(I)V
    .locals 3

    const/4 v0, 0x0

    .line 219
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 221
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .locals 5

    .line 382
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchPallet() has been called. requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 383
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 382
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 384
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 386
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 387
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-array p0, v2, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchPallet() pallet find. index = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v3

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

    .line 349
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 350
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 351
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
    .locals 4

    .line 251
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addContent() has been called. requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-nez v0, :cond_1

    return-void

    .line 258
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 261
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 262
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_1

    .line 260
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

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 473
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    return-void
.end method

.method public createContentFrame()I
    .locals 1

    .line 161
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createContentFrame() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    return v0
.end method

.method public createEmptyContentFrame()I
    .locals 6

    .line 176
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createEmptyContentFrame() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string p0, "Activity has already been released at createEmptyContentFrame."

    .line 179
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "could not get inflater."

    .line 186
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->getNext()I

    move-result v1

    .line 191
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createEmptyContentFrame : create pallet. id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 194
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const v2, 0x7f0c0031

    .line 195
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    goto :goto_0

    :cond_4
    const v2, 0x7f0c0030

    .line 197
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    .line 201
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-nez v2, :cond_5

    .line 202
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    .line 205
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->addView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    return v1
.end method

.method public createProvisionalContentFrame()I
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result v0

    .line 234
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setProvisionalContent()V

    .line 237
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeExcessiveView(I)V

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    return v0
.end method

.method public disableClick()V
    .locals 1

    .line 520
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "disableClick() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->disableClick()V

    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    return-void
.end method

.method public enableClick()V
    .locals 1

    .line 514
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "enableClick() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->enableClick()V

    const/4 v0, 0x1

    .line 516
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    return-void
.end method

.method public getCurrentContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 2

    .line 572
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getCurrentContent() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 577
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    if-nez p0, :cond_2

    const-string p0, "getCurrentContent() pallet(0) is null."

    .line 579
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1

    .line 582
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "getCurrentContent() mContentContainer has no content."

    .line 574
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-object v1
.end method

.method public getCurrentRequestId()I
    .locals 2

    .line 590
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getCurrentRequestId() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    if-nez p0, :cond_2

    const-string p0, "getCurrentRequestId() pallet(0) is null."

    .line 597
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return v1

    .line 600
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p0, "getCurrentRequestId() mContentContainer has no content."

    .line 592
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

    .line 557
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 313
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "hide()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    return-void
.end method

.method public isLoading()Z
    .locals 5

    .line 401
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLoadingContent() has been called. child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 403
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 401
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 405
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 406
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-array p0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLoading() pallet is loading. index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isLoadingInProvisionalContent()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 422
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 424
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
    .locals 4

    .line 436
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContentCreated( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string p0, "Activity has already been released."

    .line 439
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createEmptyContentFrame()I

    move-result p1

    .line 452
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 454
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeExcessiveView(I)V

    .line 458
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    if-eqz p1, :cond_4

    .line 459
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    invoke-interface {p0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;->onThumbnailCreated(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    :cond_4
    return-void
.end method

.method public onNoContentLoaded()V
    .locals 0

    .line 468
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    return-void
.end method

.method public onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
    .locals 0

    return-void
.end method

.method public onStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
    .locals 0

    .line 479
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_0

    const-string p3, "onStorageStateChanged"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 480
    :cond_0
    new-instance p3, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;

    invoke-direct {p3, p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;)V

    .line 481
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 1

    .line 131
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "pause() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_1

    .line 133
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    :cond_1
    return-void
.end method

.method public reconstructLocalCache()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadLocalCache()V

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeInvalidLocalCache(Landroid/content/Context;)V

    .line 564
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reloadTopContent()V

    return-void
.end method

.method public release()V
    .locals 4

    .line 138
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->release()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$UpdateContentTask;

    .line 147
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mUpdateContentTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 151
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public reload()V
    .locals 2

    .line 285
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "reload() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reload(I)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V

    return-void
.end method

.method public remove()V
    .locals 0

    .line 297
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

    .line 277
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->requestCreateContentInfoSync(Ljava/util/ArrayList;)V

    return-void
.end method

.method public requestLastContentLoading(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->requestLastDataLoad(I)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->requestLayout()V

    return-void
.end method

.method public saveLocalCache()V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->saveLocalCache()V

    return-void
.end method

.method public setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V
    .locals 1

    .line 526
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "setClickThumbnailProgressListener"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 528
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 531
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    goto :goto_0

    .line 533
    :cond_1
    new-instance p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    :goto_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1

    .line 323
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    if-eqz v0, :cond_0

    .line 326
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 304
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "show()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 306
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    return-void
.end method

.method public showProgress(I)V
    .locals 4

    .line 497
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "showProgress() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 498
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object p1

    if-eqz p1, :cond_2

    const v0, 0x7f09006f

    .line 500
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 503
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 507
    new-array p0, p0, [Ljava/lang/String;

    const-string v1, "ContentsViewController"

    aput-object v1, p0, v2

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    .line 507
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public startHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    .line 338
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimationInner(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopAnimation(Z)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 368
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 369
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    const-string p1, "Animation canceled."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 370
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method
