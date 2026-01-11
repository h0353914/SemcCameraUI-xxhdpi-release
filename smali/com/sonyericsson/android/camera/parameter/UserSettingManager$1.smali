.class Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;
.super Ljava/lang/Object;
.source "UserSettingManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/UserSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingManager$1;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCompleted()V
    .locals 0

    .line 85
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "all user settings load completed"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
