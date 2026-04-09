.class Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;
.super Ljava/lang/Object;
.source "ModeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    const/4 v0, 0x0

    .line 86
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 87
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$000(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->generateId(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-eq v5, v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$000(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$100(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$100(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p0

    invoke-interface {p0, v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;->onModeSelected(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method
