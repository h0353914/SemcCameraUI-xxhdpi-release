.class Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventKiller"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$1;)V
    .locals 0

    .line 729
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$KeyEventKiller;-><init>()V

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
