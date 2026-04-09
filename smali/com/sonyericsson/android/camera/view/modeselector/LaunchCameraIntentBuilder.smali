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

.field private mMode:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingPackage:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    return-void
.end method

.method public static create()Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 1

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public activity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    return-object p0
.end method

.method public callingActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingPackage:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    return-object p0
.end method

.method public callingMode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    return-object p0
.end method

.method public commit()Landroid/content/Intent;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "calling-package"

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "calling-activity"

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "calling-mode"

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mCallingMode:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0

    .line 73
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This builder object is specified enough arguments."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mode(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/LaunchCameraIntentBuilder;->mMode:Ljava/lang/String;

    return-object p0
.end method
