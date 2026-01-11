.class public Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;
.super Ljava/lang/Object;
.source "NormalSlowMotionVideoConfiguration.java"


# static fields
.field private static final DELIMITER_AT:Ljava/lang/String; = "@"

.field private static final DELIMITER_COLONS:Ljava/lang/String; = ":"

.field private static final DELIMITER_COMMA:Ljava/lang/String; = ","

.field private static final DELIMITER_CROSS:Ljava/lang/String; = "x"

.field private static final DELIMITER_SLASH:Ljava/lang/String; = "/"

.field public static final TAG:Ljava/lang/String; = "NormalSlowMotionVideoConfiguration"


# instance fields
.field public mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field public mVideoSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/util/Size;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;->mVideoSize:Landroid/util/Size;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;->mRanges:Ljava/util/List;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 41
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 56
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 59
    array-length p1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_5

    aget-object v4, p0, v3

    .line 60
    const-string v5, "@"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 61
    array-length v5, v4

    if-eq v5, v6, :cond_1

    return-object v0

    .line 65
    :cond_1
    aget-object v5, v4, v2

    const-string/jumbo v7, "x"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 66
    array-length v7, v5

    if-eq v7, v6, :cond_2

    return-object v0

    .line 69
    :cond_2
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 70
    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 72
    aget-object v4, v4, v8

    const-string v9, "/"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 73
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 74
    array-length v10, v4

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v4, v11

    .line 75
    const-string v13, ":"

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 76
    array-length v13, v12

    if-eq v13, v6, :cond_3

    return-object v0

    .line 79
    :cond_3
    aget-object v13, v12, v2

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v12, v12, v8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    filled-new-array {v13, v12}, [I

    move-result-object v12

    .line 80
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 83
    :cond_4
    new-instance v4, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v7, v5}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v4, v6, v9}, Lcom/sonyericsson/android/camera/util/capability/NormalSlowMotionVideoConfiguration;-><init>(Landroid/util/Size;Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    :cond_6
    :goto_2
    return-object v0
.end method
