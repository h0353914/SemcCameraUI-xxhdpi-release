.class public final enum Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
.super Ljava/lang/Enum;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/font/FontUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RobotoFontType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

.field public static final enum THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "THIN"

    const-string v2, "/system/fonts/Roboto-Thin.ttf"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "THIN_ITALIC"

    const-string v2, "/system/fonts/Roboto-ThinItalic.ttf"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "LIGHT"

    const-string v2, "/system/fonts/Roboto-Light.ttf"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "LIGHT_ITALIC"

    const-string v2, "/system/fonts/Roboto-LightItalic.ttf"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "REGULAR"

    const-string v2, "/system/fonts/Roboto-Regular.ttf"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "REGULAR_ITALIC"

    const-string v2, "/system/fonts/Roboto-Italic.ttf"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "MEDIUM"

    const-string v2, "/system/fonts/Roboto-Medium.ttf"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "MEDIUM_ITALIC"

    const-string v2, "/system/fonts/Roboto-MediumItalic.ttf"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BLACK"

    const-string v2, "/system/fonts/Roboto-Black.ttf"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BLACK_ITALIC"

    const-string v2, "/system/fonts/Roboto-BlackItalic.ttf"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BOLD"

    const-string v2, "/system/fonts/Roboto-Bold.ttf"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 31
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "BOLD_ITALIC"

    const-string v2, "/system/fonts/Roboto-BoldItalic.ttf"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 32
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_LIGHT"

    const-string v2, "/system/fonts/RobotoCondensed-Light.ttf"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_LIGHT_ITALIC"

    const-string v2, "/system/fonts/RobotoCondensed-LightItalic.ttf"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED"

    const-string v2, "/system/fonts/RobotoCondensed-Regular.ttf"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 35
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_ITALIC"

    const-string v2, "/system/fonts/RobotoCondensed-Italic.ttf"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 36
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_BOLD"

    const-string v2, "/system/fonts/RobotoCondensed-Bold.ttf"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 37
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const-string v1, "CONDENSED_BOLD_ITALIC"

    const-string v2, "/system/fonts/RobotoCondensed-BoldItalic.ttf"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v0, 0x12

    .line 19
    new-array v0, v0, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    .locals 1

    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->$VALUES:[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    return-object v0
.end method
