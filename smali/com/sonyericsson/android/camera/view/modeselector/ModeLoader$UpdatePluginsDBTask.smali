.class Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;
.super Landroid/os/AsyncTask;
.source "ModeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatePluginsDBTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "PluginsDBTask"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "PluginsDBTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 145
    new-instance p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->updatePluginsInDB()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$UpdatePluginsDBTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
