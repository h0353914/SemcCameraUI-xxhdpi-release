.class public Lcom/sonymobile/cameracommon/font/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FontUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;
    .locals 2

    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->access$000(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->access$000(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static setBold(Landroid/widget/Button;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setBold(Landroid/widget/TextView;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setDefault(Landroid/widget/Button;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setDefault(Landroid/widget/TextView;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/FontUtil;->createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/FontUtil;->createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method
