.class public abstract Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.super Ljava/lang/Object;
.source "CapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CapabilityItem"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    .line 33
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method abstract getDefaultValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method write(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    return-void
.end method
