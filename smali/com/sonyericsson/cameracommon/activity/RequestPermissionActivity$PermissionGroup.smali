.class final enum Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
.super Ljava/lang/Enum;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum CAMERA:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum LOCATION:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum MIC:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum STORAGE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;


# instance fields
.field private mPermissionGroupName:Ljava/lang/String;

.field private mPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDialogMessageId:I

.field private mPreDialogMessageId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    .locals 4

    .line 71
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->CAMERA:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->MIC:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->STORAGE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->LOCATION:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 72
    new-instance v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->-$$Nest$sfgetINVALID_ID()I

    move-result v5

    const v6, 0x7f0f036a

    const-string v1, "CAMERA"

    const/4 v2, 0x0

    const-string v3, "android.permission-group.CAMERA"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->CAMERA:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 77
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->-$$Nest$sfgetINVALID_ID()I

    move-result v13

    const v14, 0x7f0f036c

    const-string v9, "MIC"

    const/4 v10, 0x1

    const-string v11, "android.permission-group.MICROPHONE"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->MIC:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 82
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 84
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->-$$Nest$smgetStoragePermissionList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->-$$Nest$sfgetINVALID_ID()I

    move-result v6

    const v7, 0x7f0f036d

    const-string v2, "STORAGE"

    const/4 v3, 0x2

    const-string v4, "android.permission-group.STORAGE"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->STORAGE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 87
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const v13, 0x7f0f036b

    const v14, 0x7f0f036b

    const-string v9, "LOCATION"

    const/4 v10, 0x3

    const-string v11, "android.permission-group.LOCATION"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->LOCATION:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 71
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->$values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionGroupName:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionList:Ljava/util/List;

    .line 106
    iput p5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPreDialogMessageId:I

    .line 107
    iput p6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPostDialogMessageId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    .locals 1

    .line 71
    const-class v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    .locals 1

    .line 71
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionList:Ljava/util/List;

    return-object p0
.end method

.method public getPostDialogMessageId()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPostDialogMessageId:I

    return p0
.end method

.method public getPreDialogMessageId()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPreDialogMessageId:I

    return p0
.end method
