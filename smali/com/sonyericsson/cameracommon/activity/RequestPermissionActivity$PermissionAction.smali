.class final enum Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
.super Ljava/lang/Enum;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .locals 5

    .line 166
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 167
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "UPDATE_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 168
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "DO_NOTHING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 169
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "REQUEST_PERMISSIONS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 170
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "SHOW_POST_DIALOG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 171
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "FINISH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 166
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->$values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .locals 1

    .line 166
    const-class v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .locals 1

    .line 166
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object v0
.end method
