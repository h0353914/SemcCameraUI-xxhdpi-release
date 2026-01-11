.class public Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
.super Ljava/lang/Object;
.source "LaunchCameraIntentBuilder.java"


# static fields
.field public static final EXTRA_CALLING_ACTIVITY:Ljava/lang/String; = "calling-activity"

.field public static final EXTRA_CALLING_MODE:Ljava/lang/String; = "calling-mode"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling-package"


# instance fields
.field private mActivity:Ljava/lang/String;

.field private mCallingActivity:Ljava/lang/String;

.field private mCallingMode:Ljava/lang/String;

.field private mCallingPackage:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mMode:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingPackage:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public static create()Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 1

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public activity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    return-object p0
.end method

.method public callingActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingPackage:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    return-object p0
.end method

.method public callingMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    return-object p0
.end method

.method public category(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public commit()Landroid/content/Intent;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "calling-package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "calling-activity"

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "calling-mode"

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This builder object is specified enough arguments."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    return-object p0
.end method
