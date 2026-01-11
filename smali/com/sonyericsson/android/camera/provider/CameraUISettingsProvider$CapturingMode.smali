.class interface abstract Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$CapturingMode;
.super Ljava/lang/Object;
.source "CameraUISettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CapturingMode"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MIME_TYPE:Ljava/lang/String; = "capturingmode"

.field public static final NAME:Ljava/lang/String; = "capturingmodes"

.field public static final PATH:Ljava/lang/String; = "capturingmodes"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$CapturingMode;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
