.class public Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensCapturingModeAttributes;
.super Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
.source "GoogleLensCapturingModeAttributes.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)V
    .locals 14

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getActivityName()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v4

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorLabelId()I

    move-result v5

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getDescriptionLabelId()I

    move-result v6

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutIconId()I

    move-result v7

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutLabelId()I

    move-result v8

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getInternalCaptureType()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v9

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleNormal()Z

    move-result v10

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleOneshot()Z

    move-result v11

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleShortcut()Z

    move-result v12

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getTag()Ljava/lang/Object;

    move-result-object v13

    move-object v0, p0

    .line 23
    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V

    move-object v1, p1

    .line 37
    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensCapturingModeAttributes;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSelectorLabel()Ljava/lang/String;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensCapturingModeAttributes;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.google.ar.lens"

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensCapturingModeAttributes;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensCapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensCapturingModeAttributes;->getSelectorLabelId()I

    move-result p0

    const-string v2, ""

    const/16 v3, 0x64

    .line 50
    invoke-static {v0, v1, p0, v2, v3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
