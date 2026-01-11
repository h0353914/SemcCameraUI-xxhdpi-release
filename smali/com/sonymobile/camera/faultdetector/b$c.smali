.class Lcom/sonymobile/camera/faultdetector/b$c;
.super Lcom/sonymobile/camera/faultdetector/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/camera/faultdetector/b$c;->a:[S

    return-void

    :array_0
    .array-data 2
        0x52s
        0xd5s
        0x5bs
        0x92s
        0x0s
        0x81s
        0x11s
        0xdfs
        0xa1s
        0x7ds
        0xc3s
        0xecs
        0x31s
        0x32s
        0xe4s
        0x43s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/camera/faultdetector/b$a;-><init>(Lcom/sonymobile/camera/faultdetector/b$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/camera/faultdetector/b$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[B
    .locals 0

    sget-object p0, Lcom/sonymobile/camera/faultdetector/b$c;->a:[S

    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/b;->a([S)[B

    move-result-object p0

    return-object p0
.end method
