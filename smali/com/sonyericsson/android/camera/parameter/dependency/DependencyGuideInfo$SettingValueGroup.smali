.class Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;
.super Ljava/lang/Object;
.source "DependencyGuideInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingValueGroup"
.end annotation


# instance fields
.field public final mDependencyGroups:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

.field public final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method public varargs constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 119
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingValueGroup;->mDependencyGroups:[Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuideInfo$SettingDependencyGroup;

    return-void
.end method
