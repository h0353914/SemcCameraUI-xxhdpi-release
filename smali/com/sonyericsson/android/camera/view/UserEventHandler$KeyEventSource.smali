.class Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventSource"
.end annotation


# static fields
.field private static CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

.field private static FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;


# instance fields
.field private final mKeyCode:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetCAMERA()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetFOCUS()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    .line 146
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    const/16 v0, 0x50

    .line 147
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    return-void
.end method

.method public static from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    .locals 1

    .line 177
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 161
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 164
    :cond_2
    iget p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    check-cast p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    return p0
.end method
