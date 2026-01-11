.class public final enum Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;
.super Ljava/lang/Enum;
.source "HintTextQrDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

.field public static final enum QR_DETECT_CANNOT_CONNECT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

.field public static final enum QR_DETECT_RESULT_MATTER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

.field public static final enum QR_DETECT_RESULT_MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

.field public static final enum QR_DETECT_RESULT_OTHER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

.field public static final enum QR_DETECT_RESULT_URL:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

.field public static final enum QR_DETECT_RESULT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;


# instance fields
.field private final mIsToast:Z

.field private final mLeftButtonResourceId:I

.field private final mMessageLines:I

.field private final mMessageResourceId:I

.field private mMessageString:Ljava/lang/String;

.field private final mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field private final mWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;
    .locals 6

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_URL:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_MATTER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_OTHER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_CANNOT_CONNECT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    filled-new-array/range {v0 .. v5}, [Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsToast(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mIsToast:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeftButtonResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mLeftButtonResourceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageLines(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageLines:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageResourceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageString(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPriority(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWrapType(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMessageString(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageString:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 21

    .line 21
    new-instance v10, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v8, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v9, 0x0

    const-string v1, "QR_DETECT_RESULT_URL"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v7, 0x7f080127

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v10, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_URL:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v17, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v19, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/16 v20, 0x0

    const-string v12, "QR_DETECT_RESULT_WIFI"

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x2

    const v18, 0x7f080127

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v7, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v9, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v10, 0x0

    const-string v2, "QR_DETECT_RESULT_MATTER"

    const/4 v3, 0x2

    const v4, 0x7f0f0341

    const/4 v5, 0x0

    const/4 v6, 0x2

    const v8, 0x7f080127

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_MATTER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v17, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v19, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v12, "QR_DETECT_RESULT_MATTER_GMS_FAILED"

    const/4 v13, 0x3

    const v14, 0x7f0f0342

    const/16 v16, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v7, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->WORD_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v9, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "QR_DETECT_RESULT_OTHER"

    const/4 v3, 0x4

    const v4, 0x7f0f0342

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_OTHER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    sget-object v17, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->WORD_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v19, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v12, "QR_DETECT_CANNOT_CONNECT_WIFI"

    const/4 v13, 0x5

    const v14, 0x7f0f0344

    const/16 v16, 0x2

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_CANNOT_CONNECT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    .line 20
    invoke-static {}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->$values()[Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;ILcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;",
            "I",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;",
            "Z)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageResourceId:I

    .line 83
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageString:Ljava/lang/String;

    .line 84
    iput p5, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mMessageLines:I

    .line 85
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mWrapType:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    .line 86
    iput p7, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mLeftButtonResourceId:I

    .line 87
    iput-object p8, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 88
    iput-boolean p9, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->mIsToast:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    return-object v0
.end method
