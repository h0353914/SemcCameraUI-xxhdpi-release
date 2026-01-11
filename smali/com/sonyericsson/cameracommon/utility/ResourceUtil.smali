.class public Lcom/sonyericsson/cameracommon/utility/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field public static final INVALID_RESOURCE_ID:I = -0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field public static final TAG:Ljava/lang/String; = "ResourceUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 179
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getBoolean(Landroid/content/Context;I)Z
    .locals 1

    .line 72
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 78
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 81
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    .line 159
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getColorStateList(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorStateList(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x0

    .line 166
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 168
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getDimension(Landroid/content/Context;I)F
    .locals 1

    .line 144
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimension(Landroid/content/Context;Ljava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public static getDimension(Landroid/content/Context;Ljava/lang/String;I)F
    .locals 0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 153
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;I)I
    .locals 1

    .line 117
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 123
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 126
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1

    .line 102
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 109
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 111
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 87
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getFloat(Landroid/content/Context;I)F
    .locals 0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getInteger(Landroid/content/Context;I)I
    .locals 1

    .line 53
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 60
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 62
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getPixelFromRate(Landroid/content/Context;II)I
    .locals 0

    int-to-float p2, p2

    .line 140
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getFloat(Landroid/content/Context;I)F

    move-result p0

    mul-float/2addr p2, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p2, p0

    float-to-int p0, p2

    return p0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    const-string p1, "ResourceUtil"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
