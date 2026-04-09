.class final enum Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;
.super Ljava/lang/Enum;
.source "AlbumLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

.field public static final enum MP4:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

.field public static final enum MPO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

.field public static final enum PHOTO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

.field public static final enum THREEGPP:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

.field public static final enum UNKOWN:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;


# instance fields
.field final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    const-string v1, "PHOTO"

    const-string v2, "image/jpeg"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    const-string v1, "MPO"

    const-string v2, "image/mpo"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    const-string v1, "MP4"

    const-string v2, "video/mp4"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->MP4:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    const-string v1, "THREEGPP"

    const-string v2, "video/3gpp"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->THREEGPP:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    const-string v1, "UNKOWN"

    const-string v2, ""

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->UNKOWN:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    const/4 v0, 0x5

    .line 40
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->MP4:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->THREEGPP:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->UNKOWN:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->$VALUES:[Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    return-void
.end method

.method static fromText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;
    .locals 5

    .line 52
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->values()[Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 53
    iget-object v4, v3, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->UNKOWN:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;
    .locals 1

    .line 40
    const-class v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;
    .locals 1

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->$VALUES:[Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    return-object v0
.end method
