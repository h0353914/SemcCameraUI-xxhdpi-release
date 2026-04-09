.class public Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;
.super Ljava/lang/Object;
.source "SettingChangeExecutor.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mSettingChanger:Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;->mSettingChanger:Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;->mSettingChanger:Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;->changeValue(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V

    return-void
.end method
