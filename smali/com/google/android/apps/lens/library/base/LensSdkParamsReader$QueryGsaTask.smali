.class Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;
.super Landroid/os/AsyncTask;
.source "LensSdkParamsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryGsaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;-><init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 p1, 0x0

    .line 152
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    .line 153
    invoke-static {p0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$100(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Landroid/content/Context;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->LENS_AVAILABILITY_PROVIDER_URI:Ljava/lang/String;

    .line 155
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    .line 156
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 160
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    move p1, v0

    .line 166
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 169
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 157
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    .line 169
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 147
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const-string v0, "LensSdkParamsReader"

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x19

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Lens availability result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 178
    iget-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$302(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Z)Z

    .line 179
    iget-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;

    .line 180
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;->onLensSdkParamsAvailable(Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {p0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 147
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
