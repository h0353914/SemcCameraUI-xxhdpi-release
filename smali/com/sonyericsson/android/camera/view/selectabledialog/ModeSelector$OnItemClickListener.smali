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

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    .line 87
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 88
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->-$$Nest$fgetmModeLoader(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->generateId(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-eq v4, v1, :cond_3

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-eq v4, v1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->-$$Nest$fgetmModeLoader(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->-$$Nest$fgetmOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->-$$Nest$fgetmOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;->onModeSelected(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V

    :cond_5
    :goto_2
    return-void
.end method
