.class public Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;
    }
.end annotation


# static fields
.field private static HIGHEST_PRIORITY:I = 0x0

.field private static INVALID_ID:I = -0x1

.field private static LOWEST_PRIORITY:I = 0x7ffffffe

.field public static final TAG:Ljava/lang/String; = "RequestPermissionActivity"


# instance fields
.field private final ID_FOR_POST_DIALOG:I

.field private final ID_FOR_PRE_DIALOG:I

.field private final REQUEST_CODE_FOR_PERMISSION:I

.field private mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

.field private mCurrentShownDialog:Landroid/app/AlertDialog;

.field private mPermissionStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentPermissionState(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOffReceiver(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentShownDialog(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoNextAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrequestPermissions(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetHIGHEST_PRIORITY()I
    .locals 1

    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetINVALID_ID()I
    .locals 1

    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetStoragePermissionList()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getStoragePermissionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x100

    .line 60
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->REQUEST_CODE_FOR_PERMISSION:I

    const/16 v0, 0x201

    .line 61
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->ID_FOR_PRE_DIALOG:I

    const/16 v0, 0x202

    .line 62
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->ID_FOR_POST_DIALOG:I

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 233
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 234
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 236
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    return-void
.end method

.method private createPermissionStateList(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;",
            ">;"
        }
    .end annotation

    .line 297
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createPermissionStateList() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 299
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 301
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getGroupList()Ljava/util/List;

    move-result-object v6

    .line 304
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    if-eqz p1, :cond_1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 307
    invoke-virtual {v7, v9}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 309
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 316
    new-instance v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-direct {v6, p0, v4, v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;Ljava/util/List;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "createPermissionStateList() end:PermissionState num:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .locals 2

    .line 422
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "decideNextAction() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 425
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "decideNextAction() end:DO_NOTHING"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 426
    :cond_1
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object p0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez v0, :cond_4

    .line 430
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "decideNextAction() end:FINISH"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 431
    :cond_3
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object p0

    .line 435
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->areAllPermissionsGranted()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 438
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_0

    .line 440
    :cond_5
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_0

    .line 443
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isRestrictedMode()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 444
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_0

    .line 446
    :cond_7
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 450
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "decideNextAction() end:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return-object p0
.end method

.method private doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z
    .locals 10

    .line 455
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doAction() start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 457
    new-array v1, v0, [Ljava/lang/String;

    .line 458
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v2, :cond_1

    .line 459
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v1

    .line 462
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 463
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 464
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPermissionList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 465
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 469
    :cond_3
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$7;->$SwitchMap$com$sonyericsson$cameracommon$activity$RequestPermissionActivity$PermissionAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_5

    .line 517
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    goto/16 :goto_5

    .line 494
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 498
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 499
    invoke-virtual {v7, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 500
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPostDialogMessageId()I

    move-result v8

    sget v9, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v8, v9, :cond_7

    .line 501
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 502
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 508
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 509
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_9

    const-string p0, "doAction() end:not done"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_9
    return v0

    .line 512
    :cond_a
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPostDialog(Ljava/util/List;)V

    goto :goto_5

    .line 471
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v4, v1, v0

    .line 474
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 475
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestGroupList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 476
    invoke-virtual {v6, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 477
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPreDialogMessageId()I

    move-result v7

    sget v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v7, v8, :cond_c

    .line 478
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 479
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 485
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 486
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    goto :goto_5

    .line 489
    :cond_f
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPreDialog(Ljava/util/List;)V

    .line 525
    :goto_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_10

    const-string p0, "doAction() end:done"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_10
    return v3
.end method

.method private doNextAction()V
    .locals 3

    .line 406
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    .line 407
    :goto_0
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 409
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z

    move-result v1

    .line 413
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v2, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    :cond_1
    if-nez v1, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    :cond_2
    return-void
.end method

.method private finishActivity()V
    .locals 2

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    .line 292
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finish()V

    return-void
.end method

.method private getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .locals 4

    const-string v0, "getPermissionGroupLabel label :"

    .line 673
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "getPermissionGroupLabel() start"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 675
    :cond_0
    const-string v1, ""

    .line 676
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getGroupName()Ljava/lang/String;

    move-result-object p1

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 679
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 682
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 683
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 689
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getPermissionGroupLabel(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 692
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "getPermissionGroupLabel() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private static getStoragePermissionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isRestrictedMode()Z
    .locals 1

    .line 711
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 713
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private isSecure()Z
    .locals 1

    .line 717
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 719
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .locals 1

    .line 530
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "requestPermissions() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x100

    .line 532
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 533
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->setRequested()V

    .line 535
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "requestPermissions() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showPermissionDialog(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .line 551
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showPermissionDialog() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 553
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 556
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x201

    const v4, 0x7f09013a

    const v5, 0x7f090040

    const/4 v6, 0x0

    if-ne p1, v3, :cond_2

    const v3, 0x7f0c007d

    .line 561
    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 564
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0365

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 570
    new-instance v4, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v4, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 573
    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f0366

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 578
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 587
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    const p2, 0x7f0f02f2

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 596
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x80

    .line 597
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 598
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x202

    if-ne p1, v3, :cond_4

    const v3, 0x7f0c007b

    .line 601
    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 603
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0f0367

    .line 604
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 606
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 608
    new-instance v4, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v4, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    const p1, 0x7f09003f

    .line 611
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0368

    .line 612
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 614
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f0369

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 617
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 620
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    const p2, 0x7f0f0364

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    const p2, 0x7f0f00e8

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$6;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$6;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 661
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 662
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 668
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    const-string/jumbo p0, "showPermissionDialog() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private showPermissionPostDialog(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x202

    .line 546
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V

    return-void
.end method

.method private showPermissionPreDialog(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x201

    .line 540
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V

    return-void
.end method

.method private updateCurrentState()V
    .locals 8

    .line 327
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateCurrentState() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 329
    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    add-int/lit8 v0, v0, -0x1

    .line 330
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v0

    .line 332
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateCurrentState() before state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 333
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "updateCurrentState() before state=null"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 340
    :cond_2
    :goto_0
    sget v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->LOWEST_PRIORITY:I

    add-int/lit8 v1, v1, 0x1

    .line 341
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 342
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v6

    .line 343
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v7

    if-ge v0, v6, :cond_3

    if-ge v6, v1, :cond_3

    if-nez v7, :cond_3

    move-object v4, v5

    move v1, v6

    goto :goto_1

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-ne v0, v4, :cond_5

    .line 350
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    goto :goto_2

    .line 352
    :cond_5
    iput-object v4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 355
    :goto_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_7

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v0, :cond_6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCurrentState() after state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 358
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3

    .line 360
    :cond_6
    const-string/jumbo p0, "updateCurrentState() after state=null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 364
    :cond_7
    :goto_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_8

    const-string/jumbo p0, "updateCurrentState() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 256
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    const-string v1, "permissions_theme_res_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setTheme(I)V

    .line 266
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 267
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setContentView(I)V

    if-nez v0, :cond_3

    .line 271
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "onCreate() finish():intent = null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    return-void

    .line 275
    :cond_3
    const-string p1, "permissions_list"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 278
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->createPermissionStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 279
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 280
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez p1, :cond_5

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    .line 283
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    const-string p0, "onCreate() finish()"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void

    .line 287
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    const-string p0, "onCreate() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 698
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 700
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 701
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->unregisterFrom(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 704
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 705
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 707
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "onDestroy() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 369
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 371
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->registerTo(Landroid/content/Context;)V

    .line 375
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume() state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 378
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    const-string v0, "onResume() state=null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 384
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    .line 386
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "onResume() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 391
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onStop() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 392
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 395
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "onStop() Current dialog is shown."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finish()V

    .line 402
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "onStop() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method
