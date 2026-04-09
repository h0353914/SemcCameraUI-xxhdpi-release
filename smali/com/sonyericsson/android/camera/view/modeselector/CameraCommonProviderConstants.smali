.class public Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;
.super Ljava/lang/Object;
.source "CameraCommonProviderConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants$CapturingModeColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.camerauicommon.provider"

.field private static final BASE_URI:Landroid/net/Uri;

.field public static final CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

.field public static final CAPTURINGMODE_TABLE:Ljava/lang/String; = "capturingmodes"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.sonymobile.camerauicommon.provider"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->BASE_URI:Landroid/net/Uri;

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->BASE_URI:Landroid/net/Uri;

    const-string v1, "capturingmodes"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
