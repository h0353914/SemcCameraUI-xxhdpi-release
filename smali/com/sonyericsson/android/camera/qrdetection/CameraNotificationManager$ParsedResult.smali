.class Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedResult"
.end annotation


# instance fields
.field private mParsedHidden:Z

.field private mParsedNetworkEncryption:Ljava/lang/String;

.field private mParsedPassword:Ljava/lang/String;

.field private mParsedSsid:Ljava/lang/String;

.field private mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

.field private mParsedUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmParsedUrl(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgeUrl(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->geUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNetworkEncryption(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPassword(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getPassword()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSsid(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHidden(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->isHidden()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    .line 312
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    .line 313
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    .line 318
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    .line 313
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    .line 322
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    .line 323
    iput-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    .line 328
    iput-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    .line 330
    iput-object p4, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    .line 331
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    .line 332
    iput-object p6, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;)V

    return-void
.end method

.method private geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedType:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-object p0
.end method

.method private geUrl()Ljava/lang/String;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedUrl:Ljava/lang/String;

    return-object p0
.end method

.method private getNetworkEncryption()Ljava/lang/String;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedNetworkEncryption:Ljava/lang/String;

    return-object p0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedPassword:Ljava/lang/String;

    return-object p0
.end method

.method private getSsid()Ljava/lang/String;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedSsid:Ljava/lang/String;

    return-object p0
.end method

.method private isHidden()Z
    .locals 0

    .line 348
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->mParsedHidden:Z

    return p0
.end method
