.class Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;
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
    name = "OnNewFeatureBarClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->-$$Nest$fgetmOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->-$$Nest$fgetmOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;->onNewFeatureBarSelected()V

    :cond_0
    return-void
.end method
