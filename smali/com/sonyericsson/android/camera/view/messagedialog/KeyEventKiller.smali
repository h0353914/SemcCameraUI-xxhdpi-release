.class Lcom/sonyericsson/android/camera/view/messagedialog/KeyEventKiller;
.super Ljava/lang/Object;
.source "KeyEventKiller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p0, 0x1b

    if-eq p2, p0, :cond_0

    const/16 p0, 0x50

    if-eq p2, p0, :cond_0

    const/16 p0, 0x52

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
