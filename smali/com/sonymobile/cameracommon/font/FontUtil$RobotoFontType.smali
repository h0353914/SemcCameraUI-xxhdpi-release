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
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    .locals 18

    .line 19
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v3, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v4, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v5, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v6, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v7, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v8, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v9, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v10, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v11, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v12, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v13, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v14, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v15, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v16, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    sget-object v17, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    filled-new-array/range {v0 .. v17}, [Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmPath(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x0

    const-string v2, "/system/fonts/Roboto-Thin.ttf"

    const-string v3, "THIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x1

    const-string v2, "/system/fonts/Roboto-ThinItalic.ttf"

    const-string v3, "THIN_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->THIN_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x2

    const-string v2, "/system/fonts/Roboto-Light.ttf"

    const-string v3, "LIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 23
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x3

    const-string v2, "/system/fonts/Roboto-LightItalic.ttf"

    const-string v3, "LIGHT_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x4

    const-string v2, "/system/fonts/Roboto-Regular.ttf"

    const-string v3, "REGULAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 25
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x5

    const-string v2, "/system/fonts/Roboto-Italic.ttf"

    const-string v3, "REGULAR_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 26
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x6

    const-string v2, "/system/fonts/Roboto-Medium.ttf"

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/4 v1, 0x7

    const-string v2, "/system/fonts/Roboto-MediumItalic.ttf"

    const-string v3, "MEDIUM_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0x8

    const-string v2, "/system/fonts/Roboto-Black.ttf"

    const-string v3, "BLACK"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0x9

    const-string v2, "/system/fonts/Roboto-BlackItalic.ttf"

    const-string v3, "BLACK_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BLACK_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0xa

    const-string v2, "/system/fonts/Roboto-Bold.ttf"

    const-string v3, "BOLD"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 31
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0xb

    const-string v2, "/system/fonts/Roboto-BoldItalic.ttf"

    const-string v3, "BOLD_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 32
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0xc

    const-string v2, "/system/fonts/RobotoCondensed-Light.ttf"

    const-string v3, "CONDENSED_LIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0xd

    const-string v2, "/system/fonts/RobotoCondensed-LightItalic.ttf"

    const-string v3, "CONDENSED_LIGHT_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_LIGHT_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0xe

    const-string v2, "/system/fonts/RobotoCondensed-Regular.ttf"

    const-string v3, "CONDENSED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 35
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0xf

    const-string v2, "/system/fonts/RobotoCondensed-Italic.ttf"

    const-string v3, "CONDENSED_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 36
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0x10

    const-string v2, "/system/fonts/RobotoCondensed-Bold.ttf"

    const-string v3, "CONDENSED_BOLD"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 37
    new-instance v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    const/16 v1, 0x11

    const-string v2, "/system/fonts/RobotoCondensed-BoldItalic.ttf"

    const-string v3, "CONDENSED_BOLD_ITALIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->CONDENSED_BOLD_ITALIC:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .line 19
    invoke-static {}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->$values()[Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    move-result-object v0

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
