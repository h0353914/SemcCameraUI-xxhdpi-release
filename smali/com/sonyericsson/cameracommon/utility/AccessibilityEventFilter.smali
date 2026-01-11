.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityEventFilter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityEventFilter"


# instance fields
.field private mAllowedClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .line 56
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 65
    :goto_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 66
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_6

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 74
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onRequestSendAccessibilityEvent: This event should be ignored. Ignored event = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return v3

    .line 83
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
