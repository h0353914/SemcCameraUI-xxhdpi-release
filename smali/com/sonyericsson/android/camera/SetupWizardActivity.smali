.class public Lcom/sonyericsson/android/camera/SetupWizardActivity;
.super Landroid/app/Activity;
.source "SetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;,
        Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;,
        Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;
    }
.end annotation


# static fields
.field static final BACK_KEY:I = 0x1

.field static final GEO_TAG_RESULT:Ljava/lang/String; = "geo_tag_result"

.field private static final ON_RESUME_DELAY_MILLIS:J = 0xfL

.field static final SIDE_SENSE_RESULT:Ljava/lang/String; = "side_sense_result"

.field private static final TAG:Ljava/lang/String; = "SetupWizardActivity"

.field private static final TRACE:Z = true


# instance fields
.field private final REQUEST_CODE_FOR_PERMISSION:I

.field REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

.field private mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

.field private mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field private mIsGeotagEnabled:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

.field private mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

.field private mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private final mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private mResultData:Landroid/content/Intent;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSkippedFirstOnResume:Z

.field private mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 85
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/16 v0, 0x100

    .line 90
    iput v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_CODE_FOR_PERMISSION:I

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 93
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    .line 94
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    const/4 v1, 0x0

    .line 96
    iput v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    .line 97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    .line 106
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z

    .line 108
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    .line 113
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    .line 115
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    .line 144
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 165
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 191
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$3;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    .line 208
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 344
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 433
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isPortrait()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupLayout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->onResumeTasks()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->dismissKeyguard()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getOrientation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    return p1
.end method

.method private close()V
    .locals 2

    const v0, 0x7f09015a

    .line 902
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 904
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void
.end method

.method private dismissKeyguard()V
    .locals 2

    .line 410
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private fromExternalSettings()V
    .locals 2

    .line 867
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$SetupWizardActivity$InterruptedBy:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 877
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    .line 878
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    .line 885
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-void
.end method

.method private getOrientation(I)I
    .locals 6

    .line 812
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v0

    rsub-int v0, v0, 0x168

    add-int/2addr p1, v0

    .line 813
    rem-int/lit16 p1, p1, 0x168

    .line 819
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    const/16 v1, 0x5a

    rsub-int/lit8 v2, v0, 0x5a

    add-int/2addr v1, v0

    .line 831
    invoke-direct {p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/16 v2, 0x10e

    rsub-int v4, v0, 0x10e

    .line 834
    invoke-direct {p0, p1, v1, v4}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    return v5

    :cond_2
    add-int/2addr v2, v0

    .line 837
    invoke-direct {p0, p1, v4, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v5
.end method

.method private getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 697
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getPermissionGroupLabel() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    .line 704
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 706
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 707
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 710
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 712
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

    .line 717
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

    .line 720
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

.method private in(III)Z
    .locals 0

    if-lt p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCalledFromOnLockScreen()Z
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 416
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivityOnLockScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPortrait()Z
    .locals 1

    .line 406
    iget p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRestrictedMode()Z
    .locals 1

    const-string v0, "keyguard"

    .line 422
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 424
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private isSecure()Z
    .locals 1

    const-string v0, "keyguard"

    .line 428
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 430
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private onPauseTasks()V
    .locals 2

    const-string v0, "onPauseTasks() E"

    .line 377
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    sget-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 383
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 384
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 386
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->finish()V

    :cond_0
    const-string p0, "onPauseTasks() X"

    .line 388
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private onResumeTasks()V
    .locals 1

    const-string v0, "onResumeTasks() E"

    .line 333
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 336
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->fromExternalSettings()V

    const-string p0, "onResumeTasks() X"

    .line 338
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private setGeoTagResult(Z)V
    .locals 1

    .line 893
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v0, "geo_tag_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setSideSenseResult(Z)V
    .locals 1

    .line 889
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v0, "side_sense_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setupCompleted()V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 898
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->finish()V

    return-void
.end method

.method private setupLayout()V
    .locals 4

    const-string v0, "setupLayout() E"

    .line 530
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 532
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 534
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 536
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 537
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 539
    iget-object v3, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    int-to-float v3, v2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const v0, 0x7f09015a

    .line 545
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 547
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 548
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 549
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f080208

    .line 551
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p0, "setupLayout() X"

    .line 553
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    .locals 1

    .line 846
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 847
    sget-object p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$SetupWizardActivity$InterruptedBy:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 860
    :pswitch_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchSideSenseSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 854
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 855
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 849
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 850
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 82
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->backToPreviousPage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->BACK_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 562
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v1, "geo_tag_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 568
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    .line 570
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 574
    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 575
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "onCreate() E"

    .line 219
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isCalledFromOnLockScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 228
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 230
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    .line 234
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    .line 237
    new-instance p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;

    invoke-direct {p1, p0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    const p1, 0x7f0c001d

    .line 266
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setContentView(I)V

    const p1, 0x7f09015b

    .line 267
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    .line 270
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 271
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickSetupWizardButtonListener;)V

    .line 273
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    const-string p0, "onCreate() X"

    .line 300
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, "onDestroy() E"

    .line 400
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 401
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string p0, "onDestroy() X"

    .line 402
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 585
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 595
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause() E"

    .line 358
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z

    if-nez v0, :cond_2

    .line 368
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "onPause() --> onPauseTasks()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->onPauseTasks()V

    .line 372
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string p0, "onPause() X"

    .line 373
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const-string v0, "onRequestPermissionsResult() E"

    .line 748
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 749
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 752
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 753
    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 754
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 755
    aget-object v2, p2, v0

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    .line 761
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 762
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 763
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 765
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 766
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 767
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 768
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    goto :goto_1

    .line 770
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    goto :goto_1

    .line 774
    :cond_2
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 775
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 776
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_1

    .line 780
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 781
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V

    :cond_4
    :goto_1
    const-string p0, "onRequestPermissionsResult() X"

    .line 784
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const-string v0, "onResume() E"

    .line 305
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMainHandler:Landroid/os/Handler;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 311
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 315
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z

    const-wide/16 v0, 0xf

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v0, "onResume() --> onResumeTasks()"

    .line 322
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mSkippedFirstOnResume:Z

    .line 325
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->onResumeTasks()V

    .line 328
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "onResume() X"

    .line 329
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "onStop() E"

    .line 393
    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string p0, "onStop() X"

    .line 395
    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public showOptionalRuntimePermissionDialog()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .line 605
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 606
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 608
    new-instance v2, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0243

    .line 611
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 613
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c0065

    .line 616
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f090021

    .line 618
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900dd

    .line 619
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090080

    .line 620
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090020

    .line 621
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0241

    .line 624
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 625
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f0245

    .line 626
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0f0242

    .line 627
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 629
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 632
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    const v2, 0x7f0f023e

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    const v2, 0x7f0f00c2

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 673
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 685
    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 689
    iget v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 692
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 693
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    return-void
.end method
