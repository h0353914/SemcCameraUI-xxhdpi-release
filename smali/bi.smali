.class public final Lbi;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final f:Lbi;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbi;

    .line 1
    invoke-direct {v0}, Lbi;-><init>()V

    sput-object v0, Lbi;->f:Lbi;

    const-class v1, Lbi;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lde;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbi;->b:Ljava/lang/String;

    iput-object v0, p0, Lbi;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lbi;->d:I

    iput v0, p0, Lbi;->e:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    sget-object p0, Lbi;->f:Lbi;

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Lbf;

    .line 4
    invoke-direct {p0}, Lbf;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lbi;

    .line 5
    invoke-direct {p0}, Lbi;-><init>()V

    return-object p0

    .line 6
    :cond_2
    invoke-static {}, Lbh;->a()Ldh;

    move-result-object v4

    const-string v5, "e"

    .line 7
    invoke-static {}, Lbh;->a()Ldh;

    move-result-object v6

    const-string v0, "a"

    const-string v1, "b"

    const-string v2, "c"

    const-string v3, "d"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lbi;->f:Lbi;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100c\u0002\u0004\u100c\u0003"

    .line 8
    invoke-static {p1, p2, p0}, Lbi;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
