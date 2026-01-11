.class final Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/widget/Switch;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/widget/Switch;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener;->this$0:Lcom/sonyericsson/cameracommon/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/widget/Switch;Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener;-><init>(Lcom/sonyericsson/cameracommon/widget/Switch;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/widget/Switch$SwitchOnClickListener;->this$0:Lcom/sonyericsson/cameracommon/widget/Switch;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/widget/Switch;)V

    return-void
.end method
