.class public final Lo;
.super Ldc;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final c:Lo;


# instance fields
.field public a:I

.field public b:I

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo;

    .line 1
    invoke-direct {v0}, Lo;-><init>()V

    sput-object v0, Lo;->c:Lo;

    const-class v1, Lo;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ldc;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lo;->e:B

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    sget-object p0, Lo;->c:Lo;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ln;

    .line 4
    invoke-direct {p0}, Ln;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lo;

    .line 5
    invoke-direct {p0}, Lo;-><init>()V

    return-object p0

    .line 0
    :cond_2
    const-string p0, "b"

    .line 6
    invoke-static {}, Lm;->a()Ldh;

    move-result-object p1

    const-string p2, "a"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lo;->c:Lo;

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 7
    invoke-static {p1, p2, p0}, Lo;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez p2, :cond_4

    const/4 v0, 0x0

    .line 5
    :cond_4
    iput-byte v0, p0, Lo;->e:B

    const/4 p0, 0x0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lo;->e:B

    .line 8
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
