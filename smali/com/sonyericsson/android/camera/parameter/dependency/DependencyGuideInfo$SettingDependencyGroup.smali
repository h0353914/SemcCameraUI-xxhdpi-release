.class Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;
.super Ljava/lang/Object;
.source "DependencyGuideInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingDependencyGroup"
.end annotation


# instance fields
.field public final mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field public final mValues:[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method public varargs constructor <init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 129
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;->mValues:[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method
