.class public Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"


# static fields
.field private static final REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PermissionsUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areCallerGeoPermissionsGranted(Landroid/app/Activity;)Z
    .locals 5

    .line 169
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 170
    invoke-static {p0, v4}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkCallerPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 2

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-static {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->getSelfPermissions(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static checkAndRequestSelfPermissions(Landroid/app/Activity;II[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 56
    array-length v1, p3

    if-nez v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {p0, p3, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->getSelfPermissions(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 67
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p3, :cond_1

    const-string/jumbo p3, "start RequestPermissionActivity"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v0, "permissions_list"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 72
    const-string v0, "permissions_theme_res_id"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;II[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static checkCallerPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x1000

    .line 197
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 196
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 203
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 207
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 208
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method private static findLocationPermissions(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 231
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->REQUEST_LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getSelfPermissions(Landroid/content/Context;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 109
    const-string p0, "Failed: parameter granted is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 113
    const-string p0, "Failed: parameter notGranted is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 117
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 118
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "permission denied:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 124
    :cond_2
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_3
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "permission allowed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 131
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_5
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->findLocationPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 136
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->findLocationPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 138
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-interface {p3, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    return-void
.end method
