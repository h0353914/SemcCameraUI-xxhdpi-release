.class public Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.super Ljava/lang/Object;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;,
        Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkCallbackImpl;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:Ljava/lang/String; = "[0-9A-Fa-f]*"

.field private static final HEX_DIGITS_64:Ljava/util/regex/Pattern;

.field private static final START_QR_DETECT_DELAY_MILLIS:J = 0x1388L

.field private static final SYMBOL_BACKSLASH:C = '\\'

.field private static final SYMBOL_QUOTATION:Ljava/lang/String; = "\""

.field private static final URL_RESULT_PREFIX_HTTP:Ljava/lang/String; = "http://"

.field private static final URL_RESULT_PREFIX_HTTPS:Ljava/lang/String; = "https://"

.field private static final WIFI_RESULT_HIDDEN_FIELD:Ljava/lang/String; = "H:"

.field private static final WIFI_RESULT_PASSWORD_FIELD:Ljava/lang/String; = "P:"

.field private static final WIFI_RESULT_SEPARATOR:C = ';'

.field private static final WIFI_RESULT_SSID_FIELD:Ljava/lang/String; = "S:"

.field private static final WIFI_RESULT_TITLE_FIELD:Ljava/lang/String; = "WIFI:"

.field private static final WIFI_RESULT_TYPE_FIELD:Ljava/lang/String; = "T:"

.field private static final WIFI_RESULT_TYPE_NOPASS:Ljava/lang/String; = "nopass"

.field private static final WIFI_RESULT_TYPE_SAE:Ljava/lang/String; = "SAE"

.field private static final WIFI_RESULT_TYPE_WEP:Ljava/lang/String; = "WEP"

.field private static final WIFI_RESULT_TYPE_WPA:Ljava/lang/String; = "WPA"

.field private static final WIFI_RESULT_TYPE_WPA2:Ljava/lang/String; = "WPA2"

.field private static mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

.field private static mIsGmsMatterSupported:Ljava/lang/Boolean;


# instance fields
.field private mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDetectResult:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

.field private mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

.field private mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

.field private final mStartQrDetectorTasks:Ljava/lang/Runnable;

.field private mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmQrCodeScanner(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDetectResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mDetectResult:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mParseResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->ParseResult(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyQrDetectResult(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->notifyQrDetectResult()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->HEX_DIGITS_64:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    .line 91
    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    .line 301
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$5;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    .line 169
    iput-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    .line 171
    iput-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

    .line 172
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    .line 173
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->registerListener(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V

    .line 174
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private ParseResult(Ljava/lang/String;)V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 382
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 384
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 385
    const-string v0, "WIFI:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->parseWifiResult(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 387
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 388
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isBasicallyValidURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 390
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 391
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isMatterQrCode(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.android.gms"

    .line 394
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 395
    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mIsGmsMatterSupported: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 398
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    .line 400
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 402
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 404
    :cond_5
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 405
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 408
    :cond_6
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-direct {p1, p0, v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 409
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 609
    const-string p0, ""

    return-object p0

    .line 612
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    const-string v1, "\""

    if-lt p0, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 613
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    .line 617
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 623
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 624
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 625
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 626
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 627
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 628
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 630
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetSsid(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 631
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$misHidden(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Z

    move-result p0

    iput-boolean p0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    return-object v0
.end method

.method private changeNetworkUnEncrypted()V
    .locals 3

    .line 664
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 665
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 666
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private changeNetworkWEP()V
    .locals 5

    .line 636
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetPassword(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    .line 639
    :cond_0
    const-string v2, "[0-9A-Fa-f]*"

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v1, v2, v4

    goto :goto_0

    .line 643
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    .line 645
    :goto_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 646
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 647
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 648
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private changeNetworkWPA()V
    .locals 3

    .line 652
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkCommon()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 653
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->HEX_DIGITS_64:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetPassword(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetPassword(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetPassword(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->addQuotationIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 659
    :goto_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 660
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private connectWifiNetwork()V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetNetworkEncryption(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->forIntentValue(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    move-result-object v0

    .line 573
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    if-ne v0, v1, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkUnEncrypted()V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetPassword(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 577
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 578
    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$6;->$SwitchMap$com$sonyericsson$android$camera$qrdetection$CameraNotificationManager$NetworkType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkWPA()V

    goto :goto_0

    .line 580
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->changeNetworkWEP()V

    .line 588
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private countPrecedingBackslashes(Ljava/lang/CharSequence;I)I
    .locals 2

    add-int/lit8 p2, p2, -0x1

    const/4 p0, 0x0

    :goto_0
    if-ltz p2, :cond_0

    .line 484
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private handleResult()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->openURL()V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 364
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetNetworkEncryption(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isCTAWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->handleWifiResult()V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$fgetmParsedUrl(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$fgetmParsedUrl(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->startCommissioning(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0

    .line 375
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    .line 377
    :cond_4
    :goto_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendTransitionQrCodeEvent()V

    return-void
.end method

.method private isAddWifiConfigAllowed()Z
    .locals 1

    .line 294
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 295
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object p0

    .line 296
    const-string v0, "no_add_wifi_config"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isBasicallyValidURL(Ljava/lang/String;)Z
    .locals 0

    .line 434
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCTAWifi()Z
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCtaPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageType;->APPLICATION_NOTIFICATION_NETWORK:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 675
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->isNeverShowDialog(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMatterQrCode(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isMatterQrCode: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MT:[A-Z0-9.-]{19,}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isWifiSettingOn()Z
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method private matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 439
    new-array v1, v0, [Ljava/lang/String;

    .line 441
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    move-object v5, v3

    :goto_0
    if-ge v4, v2, :cond_7

    .line 443
    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_3

    .line 447
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x1

    move v7, v6

    move-object v6, v5

    move v5, v4

    :goto_1
    if-eqz v7, :cond_6

    .line 451
    invoke-virtual {p2, p3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_1

    .line 453
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    :goto_2
    move v7, v0

    goto :goto_1

    .line 455
    :cond_1
    invoke-direct {p0, p2, v5}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->countPrecedingBackslashes(Ljava/lang/CharSequence;I)I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    .line 461
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    :cond_3
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p4, :cond_4

    .line 465
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 467
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 468
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v4, v5

    move-object v5, v6

    goto :goto_0

    :cond_7
    :goto_3
    if-eqz v5, :cond_9

    .line 475
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    .line 478
    :cond_8
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_9
    :goto_4
    return-object v3
.end method

.method private matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 0

    .line 495
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 496
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method private notifyQrDetectResult()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeUrl(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_0
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_1
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_URL:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 204
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageString(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$2;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto/16 :goto_1

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 215
    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetNetworkEncryption(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 216
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isAddWifiConfigAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_CANNOT_CONNECT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 219
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto :goto_1

    .line 221
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_WIFI:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0345

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    .line 226
    invoke-static {v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgetSsid(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageString(Ljava/lang/String;)V

    .line 227
    new-instance v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$3;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto :goto_1

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    if-ne v0, v1, :cond_5

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeUrl(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_MATTER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 241
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageString(Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$4;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;->setMessageListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    goto :goto_1

    .line 252
    :cond_5
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;->QR_DETECT_RESULT_OTHER:Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;-><init>(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect$MessageType;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mAutoPowerOffTimer:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;

    if-eqz p0, :cond_6

    .line 259
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;->resetTimer()V

    :cond_6
    return-void
.end method

.method private openURL()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeUrl(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Ljava/lang/String;

    move-result-object v0

    .line 528
    const-string v1, "HTTP://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_1
    const-string v1, "HTTPS://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 532
    :cond_2
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :cond_3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 537
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 539
    :catch_0
    const-string p0, "openURL ActivityNotFoundException "

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private parseWifiResult(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;
    .locals 11

    const/4 v0, 0x5

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v2, "S:"

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 421
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    const-string v2, "P:"

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    .line 426
    const-string v2, "T:"

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 428
    const-string v7, "H:"

    invoke-direct {p0, v7, v0, v3, v4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 430
    new-instance v8, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v9, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const/4 v10, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V

    return-object v8

    .line 422
    :cond_1
    :goto_0
    new-instance v8, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    sget-object v6, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;-><init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult-IA;)V

    return-object v8
.end method

.method public static setGmsMatterSupportChecked(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setGmsMatterSupportChecked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 264
    sput-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mIsGmsMatterSupportChecked:Ljava/lang/Boolean;

    return-object p0
.end method

.method private showQrDetectionResult(Lcom/sonyericsson/android/camera/view/hint/HintTextQrDetect;)V
    .locals 1

    .line 684
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_SHOW_QR_DETECTION_RESULT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V
    .locals 1

    .line 679
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_REQUEST_QR_WIFI_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private startCommissioning(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 274
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 276
    const-string p2, "com.google.android.gms"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    .line 279
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "startCommissioning ActivityNotFoundException: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 283
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 p0, 0x5c

    .line 500
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    .line 504
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v3, v4

    :goto_0
    if-ge v0, v1, :cond_3

    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v3, :cond_2

    if-eq v5, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    .line 511
    :cond_2
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 598
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto :goto_0

    .line 600
    :cond_0
    const-string p0, "CameraNotificationManager enableNetwork error"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_1
    const-string p0, "CameraNotificationManager  networkId error"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mStartQrDetectorTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public geParsedResultType()Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mParsedResult:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;->-$$Nest$mgeParsedResultType(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResult;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object p0

    return-object p0
.end method

.method public handleWifiResult()V
    .locals 1

    .line 562
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->isWifiSettingOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->CONNECT_WIFI_SETTING:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->showQrWifiDialog(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mQrCodeScanner:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrCodeScanner;->start()V

    .line 566
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->connectWifiNetwork()V

    :goto_0
    return-void
.end method

.method public setViewFinder(Lcom/sonyericsson/android/camera/view/ViewFinder;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinder;

    return-void
.end method
