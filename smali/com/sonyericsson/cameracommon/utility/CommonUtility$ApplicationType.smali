.class public final enum Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
.super Ljava/lang/Enum;
.source "CommonUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

.field public static final enum OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

.field public static final enum SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

.field public static final enum UPDATED_SYSTEM_APP:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    .locals 3

    .line 123
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    .line 125
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    const-string v1, "UPDATED_SYSTEM_APP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    .line 126
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    .line 123
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->$values()[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    .locals 1

    .line 123
    const-class v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    .locals 1

    .line 123
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    return-object v0
.end method
