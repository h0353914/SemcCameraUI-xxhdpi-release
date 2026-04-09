.class public final enum Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;
.super Ljava/lang/Enum;
.source "CommonUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultGallerySetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

.field public static final enum GOOGLE_PHOTOS:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

.field public static final enum OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

.field public static final enum SONY_ALBUM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const-string v1, "SONY_ALBUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->SONY_ALBUM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const-string v1, "GOOGLE_PHOTOS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->GOOGLE_PHOTOS:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->SONY_ALBUM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->GOOGLE_PHOTOS:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;
    .locals 1

    .line 44
    const-class v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;
    .locals 1

    .line 44
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    return-object v0
.end method
