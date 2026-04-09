.class public Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
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


# direct methods
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

    .line 237
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 238
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 239
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 55
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 55
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;[Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createPermissionStateList(Ljava/util/List;)Ljava/util/List;
    .locals 12
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

    .line 295
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createPermissionStateList() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 297
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 299
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getGroupList()Ljava/util/List;

    move-result-object v7

    .line 302
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    if-eqz p1, :cond_1

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 305
    invoke-virtual {v8, v10}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0, v10}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_2

    .line 307
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    .line 314
    new-instance v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-direct {v7, p0, v5, v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 318
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPermissionStateList() end:PermissionState num:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    .line 318
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .locals 4

    .line 418
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "decideNextAction() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 421
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "decideNextAction() end:DO_NOTHING"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 422
    :cond_1
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object p0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez v0, :cond_4

    .line 426
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "decideNextAction() end:FINISH"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 427
    :cond_3
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object p0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->areAllPermissionsGranted()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 434
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_0

    .line 436
    :cond_5
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_0

    .line 439
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isRestrictedMode()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 440
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_0

    .line 442
    :cond_7
    sget-object p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 446
    :goto_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decideNextAction() end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return-object p0
.end method

.method private dismissKeyguard()V
    .locals 2

    .line 285
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z
    .locals 10

    .line 451
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction() start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 453
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 454
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v3, :cond_1

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v0

    .line 458
    :cond_1
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$6;->$SwitchMap$com$sonyericsson$cameracommon$activity$RequestPermissionActivity$PermissionAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 506
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    goto/16 :goto_2

    .line 483
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 486
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 487
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestGroupList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 488
    invoke-virtual {v7, v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 489
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPostDialogMessageId()I

    move-result v8

    sget v9, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v8, v9, :cond_2

    .line 490
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 491
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 497
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 498
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    const-string p0, "doAction() end:not done"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return v2

    .line 501
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPostDialog(Ljava/util/List;)V

    goto :goto_2

    .line 460
    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 462
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v4, v0, v2

    .line 463
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 464
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestGroupList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 465
    invoke-virtual {v6, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 466
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPreDialogMessageId()I

    move-result v7

    sget v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v7, v8, :cond_7

    .line 467
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 468
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 474
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 475
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    goto :goto_2

    .line 478
    :cond_a
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPreDialog(Ljava/util/List;)V

    .line 514
    :goto_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_b

    const-string p0, "doAction() end:done"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_b
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doNextAction()V
    .locals 3

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    .line 403
    :goto_0
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v1, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 405
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z

    move-result v1

    .line 409
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v2, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    :cond_1
    if-nez v1, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    :cond_2
    return-void
.end method

.method private finishActivity()V
    .locals 2

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    .line 290
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 291
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finish()V

    return-void
.end method

.method private getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .locals 5

    .line 661
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getPermissionGroupLabel() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    .line 664
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getGroupName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    .line 667
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 670
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 671
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    :try_start_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPermissionGroupLabel label :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p0, v0

    .line 677
    :goto_0
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermissionGroupLabel(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 680
    :cond_2
    :goto_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    const-string p1, "getPermissionGroupLabel() end"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method private isRestrictedMode()Z
    .locals 1

    const-string v0, "keyguard"

    .line 697
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 699
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private isSecure()Z
    .locals 1

    const-string v0, "keyguard"

    .line 703
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 705
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .locals 1

    .line 519
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "requestPermissions() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x100

    .line 521
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 522
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->setRequested()V

    .line 524
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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .line 540
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "showPermissionDialog() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 542
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 545
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 547
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x201

    const v4, 0x7f0900ed

    const v5, 0x7f090021

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne p1, v3, :cond_2

    const v3, 0x7f0c0067

    .line 550
    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 552
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 553
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0f023f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v2, v9, v8

    invoke-static {v5, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 559
    new-instance v4, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v4, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 562
    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f0240

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 564
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 567
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0f01f7

    .line 576
    new-instance p2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 585
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x80

    .line 586
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 587
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x202

    if-ne p1, v3, :cond_4

    const v3, 0x7f0c0064

    .line 590
    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 592
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0f0241

    .line 593
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 595
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 597
    new-instance v4, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v4, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    const p1, 0x7f090020

    .line 600
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0242

    .line 601
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 603
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f0243

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 605
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 606
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0f023e

    .line 609
    new-instance p2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;

    invoke-direct {p2, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0f00c2

    .line 629
    new-instance p2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;

    invoke-direct {p2, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    new-instance p1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 649
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 650
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 656
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    const-string p0, "showPermissionDialog() end"

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

    .line 535
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

    .line 529
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V

    return-void
.end method

.method private updateCurrentState()V
    .locals 10

    .line 325
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "updateCurrentState() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 327
    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 328
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v0

    .line 330
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentState() before state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 331
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 330
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string v2, "updateCurrentState() before state=null"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 338
    :cond_2
    :goto_0
    sget v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->LOWEST_PRIORITY:I

    add-int/2addr v2, v1

    .line 339
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v2

    move-object v2, v5

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 340
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v8

    .line 341
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v9

    if-ge v0, v8, :cond_3

    if-ge v8, v6, :cond_3

    if-nez v9, :cond_3

    move-object v2, v7

    move v6, v8

    goto :goto_1

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-ne v0, v2, :cond_5

    .line 348
    iput-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    goto :goto_2

    .line 350
    :cond_5
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 353
    :goto_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_7

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v0, :cond_6

    .line 355
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentState() after state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 356
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 355
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p0, "updateCurrentState() after state=null"

    .line 358
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 362
    :cond_7
    :goto_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_8

    const-string p0, "updateCurrentState() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 243
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 245
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 246
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setContentView(I)V

    .line 248
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isRestrictedMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->dismissKeyguard()V

    .line 261
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_4

    .line 264
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    const-string p1, "onCreate() finish():intent = null"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    return-void

    :cond_4
    const-string v0, "permissions_list"

    .line 268
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 271
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->createPermissionStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 272
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 273
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez p1, :cond_6

    .line 275
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    .line 276
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    const-string p0, "onCreate() finish()"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void

    .line 280
    :cond_6
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_7

    const-string p0, "onCreate() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 686
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 688
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 690
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 691
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 693
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
    .locals 4

    .line 367
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 369
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 371
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 373
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 374
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 373
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "onResume() state=null"

    .line 376
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 380
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    .line 382
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

    .line 387
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onStop() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 388
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 391
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "onStop() Current dialog is shown."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    .line 398
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
