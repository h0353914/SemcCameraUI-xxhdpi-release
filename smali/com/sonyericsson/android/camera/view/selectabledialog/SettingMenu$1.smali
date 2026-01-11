.class Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu$1;
.super Ljava/lang/Object;
.source "SettingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f0900ae

    .line 125
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
