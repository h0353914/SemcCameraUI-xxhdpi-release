.class public final Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;
.super Ljava/lang/Object;
.source "SomcMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/media/SomcMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedFiles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles$ExtendedFileColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 34
    invoke-static {}, Lcom/sonymobile/media/SomcMediaStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 1

    .line 38
    invoke-static {}, Lcom/sonymobile/media/SomcMediaStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 60
    invoke-static {p0, p3}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://somcmedia/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/extended_file"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://media/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/extended_file"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method
