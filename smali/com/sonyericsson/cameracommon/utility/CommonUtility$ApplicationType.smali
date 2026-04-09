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
.method static constructor <clinit>()V
    .locals 5

    .line 161
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    .line 162
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    const-string v1, "UPDATED_SYSTEM_APP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    .line 163
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    const/4 v0, 0x3

    .line 160
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    aput-object v1, v0, v4

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

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    .locals 1

    .line 160
    const-class v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    .locals 1

    .line 160
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    return-object v0
.end method
