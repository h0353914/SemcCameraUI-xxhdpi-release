.class Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;
.super Landroid/os/AsyncTask;
.source "CapturingModeListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetCapturingModeListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "GetModeListTask"


# instance fields
.field private final mCapturingModeListLoaderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 162
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->mCapturingModeListLoaderRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private sortCapturingModeList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->values()[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 205
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$CapturingModeId;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "GetModeListTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->mCapturingModeListLoaderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$200(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    move-result-object v2

    .line 179
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$000(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    .line 181
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$100(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 178
    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->getCapturingModeList([Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;)Ljava/util/List;

    move-result-object v2

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 186
    new-array v0, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode query takes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " [ms]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 188
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$300(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$400(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    .line 192
    new-array p1, v4, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapturingModeGroupChanged count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v7

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 195
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->sortCapturingModeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 154
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 222
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$GetCapturingModeListTask;->mCapturingModeListLoaderRef:Ljava/lang/ref/WeakReference;

    .line 223
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    if-nez p0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$500(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$500(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$600(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;

    move-result-object p1

    .line 231
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->access$500(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;->onCapturingModeListChanged(Ljava/util/List;)V

    return-void
.end method
