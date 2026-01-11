.class public Lcom/sonyericsson/android/camera/SetupWizardActivity;
.super Landroid/app/Activity;
.source "SetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;,
        Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;,
        Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;
    }
.end annotation


# static fields
.field static final BACK_KEY:I = 0x1

.field static final GEO_TAG_RESULT:Ljava/lang/String; = "geo_tag_result"

.field static final LENS_CORRECTION_RESULT:Ljava/lang/String; = "lens_correction_result"

.field static final SIDE_SENSE_RESULT:Ljava/lang/String; = "side_sense_result"

.field private static final TAG:Ljava/lang/String; = "SetupWizardActivity"

.field private static final TRACE:Z = true

.field static final ZOOM_ASSIST_RESULT:Ljava/lang/String; = "zoom_assist_result"


# instance fields
.field private final REQUEST_CODE_FOR_PERMISSION:I

.field REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

.field private mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

.field private mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field private mIsGeotagEnabled:Z

.field private mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

.field private mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

.field private mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private final mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

.field private mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private mResultData:Landroid/content/Intent;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGeotagEnabled(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOptionalRuntimePermissionDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGeotagEnabled(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOptionalRuntimePermissionDialog(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclose(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissKeyguard(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->dismissKeyguard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOrientation(Lcom/sonyericsson/android/camera/SetupWizardActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getOrientation(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPortrait(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isPortrait()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRestrictedMode(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isRestrictedMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSecure(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isSecure()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetGeoTagResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLensCorrection(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setLensCorrection(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSideSenseResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetZoomAssistResult(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setZoomAssistResult(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupCompleted(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupLayout(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity;Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/16 v0, 0x100

    .line 87
    iput v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_CODE_FOR_PERMISSION:I

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 90
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    const/4 v1, 0x0

    .line 93
    iput v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    .line 94
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    .line 96
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    .line 100
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter-IA;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    .line 131
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$1;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 152
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 178
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$3;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$4;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 370
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$7;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    return-void
.end method

.method private close()V
    .locals 2

    const v0, 0x7f0901ac

    .line 868
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 870
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void
.end method

.method private dismissKeyguard()V
    .locals 2

    .line 350
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

    .line 817
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

    .line 827
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    .line 828
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 820
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    goto :goto_0

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    .line 835
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-void
.end method

.method private getOrientation(I)I
    .locals 5

    .line 762
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v0

    rsub-int v0, v0, 0x168

    add-int/2addr p1, v0

    .line 763
    rem-int/lit16 p1, p1, 0x168

    .line 769
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    rsub-int/lit8 v1, v0, 0x5a

    add-int/lit8 v2, v0, 0x5a

    .line 781
    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    rsub-int v1, v0, 0x10e

    .line 784
    invoke-direct {p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/lit16 v0, v0, 0x10e

    .line 787
    invoke-direct {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->in(III)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v4
.end method

.method private getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "getPermissionGroupLabel label :"

    .line 652
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "getPermissionGroupLabel() start"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 654
    :cond_0
    const-string v1, ""

    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 657
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 660
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 661
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
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

    .line 667
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

    .line 670
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

.method private isInteractive()Z
    .locals 1

    .line 366
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPortrait()Z
    .locals 1

    .line 346
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

    .line 354
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 356
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method private isSecure()Z
    .locals 1

    .line 360
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 362
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private setGeoTagResult(Z)V
    .locals 1

    .line 843
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v0, "geo_tag_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setLensCorrection(Z)V
    .locals 1

    .line 847
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v0, "lens_correction_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setSideSenseResult(Z)V
    .locals 1

    .line 839
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string/jumbo v0, "side_sense_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setZoomAssistResult(Z)V
    .locals 1

    .line 851
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string/jumbo v0, "zoom_assist_result"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setupCompleted()V
    .locals 2

    const/4 v0, -0x1

    .line 863
    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 864
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->finish()V

    return-void
.end method

.method private setupInterrupted()V
    .locals 2

    const/4 v0, 0x0

    .line 855
    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 856
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 857
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 858
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->close()V

    .line 859
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->finish()V

    return-void
.end method

.method private setupLayout()V
    .locals 4

    .line 484
    const-string/jumbo v0, "setupLayout() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 486
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 488
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 490
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 491
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 493
    iget-object v3, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    int-to-float v3, v2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const v0, 0x7f0901ac

    .line 499
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 501
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 502
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 503
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p0, 0x7f080252

    .line 505
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 507
    const-string/jumbo p0, "setupLayout() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private toExternalSettings(Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;)V
    .locals 2

    .line 796
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 797
    sget-object p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$SetupWizardActivity$InterruptedBy:[I

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchSideSenseSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 804
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 805
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 799
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 800
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 0

    .line 79
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->backToPreviousPage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->BACK_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 516
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->closeSetupWizard()V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v1, "geo_tag_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 522
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->getTutorialTypes()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SIDE_SENSE_BAR:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 523
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setSideSenseResult(Z)V

    .line 525
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupCompleted()V

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 529
    iget-object v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 214
    const-string v0, "onCreate() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mPositiveClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mNegativeClickListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageCallback:Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    .line 221
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    .line 224
    new-instance p1, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;

    invoke-direct {p1, p0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$5;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 251
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    const p1, 0x7f0c0020

    .line 253
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setContentView(I)V

    const p1, 0x7f0901ad

    .line 254
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    .line 257
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOnClickTutorialButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setOnClickTutorialButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;)V

    .line 260
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$6;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 287
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    const-string p0, "onCreate() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 337
    const-string v0, "onDestroy() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    const-string p0, "onDestroy() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 540
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

    .line 550
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 3

    .line 312
    const-string v0, "onPause() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mInterruptedBy:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    sget-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    if-ne v0, v1, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mResultData:Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.extra.SCREEN_OFF"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setupInterrupted()V

    .line 324
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 325
    const-string p0, "onPause() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 698
    const-string v0, "onRequestPermissionsResult() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 699
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 702
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 703
    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 704
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 705
    aget-object v2, p2, v0

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    .line 711
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 712
    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 713
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 730
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 731
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->showOptionalRuntimePermissionDialog()V

    goto :goto_2

    .line 715
    :cond_2
    :goto_1
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 716
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 717
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object p2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 718
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->close()V

    goto :goto_2

    .line 720
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V

    goto :goto_2

    .line 724
    :cond_4
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 725
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_LAUNCH:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 726
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mMessageDialog:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    .line 734
    :cond_5
    :goto_2
    const-string p0, "onRequestPermissionsResult() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 296
    const-string v0, "onResume() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mIsGeotagEnabled:Z

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->setGeoTagResult(Z)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 304
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->fromExternalSettings()V

    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 307
    const-string p0, "onResume() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 330
    const-string v0, "onStop() E"

    invoke-static {v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 332
    const-string p0, "onStop() X"

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public showOptionalRuntimePermissionDialog()V
    .locals 7

    .line 560
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 561
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 563
    new-instance v2, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller-IA;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0369

    .line 566
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 568
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c007c

    .line 571
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f090040

    .line 573
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090129

    .line 574
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900bc

    .line 575
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09003f

    .line 576
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0367

    .line 579
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 580
    const-string v2, "android.permission-group.LOCATION"

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->getPermissionGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0f036b

    .line 581
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0f0368

    .line 582
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 584
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 587
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$8;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    const v2, 0x7f0f0364

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$9;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    const v2, 0x7f0f00e8

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 628
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$10;-><init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    sget-object v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setCancelable(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 644
    iget v1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;

    .line 647
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity;->mOptionalRuntimePermissionDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 648
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    return-void
.end method
