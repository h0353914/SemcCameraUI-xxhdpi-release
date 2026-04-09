.class Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;
.super Ljava/lang/Object;
.source "ExternalCameraAppSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemsBuilder"
.end annotation


# instance fields
.field public final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->entries:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$1;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ItemsBuilder;->entries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
