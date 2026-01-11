.class public Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
.super Ljava/lang/Object;
.source "CapturingModePanelAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributesBuilder"
.end annotation


# instance fields
.field mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    return-void
.end method


# virtual methods
.method public build()Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;
    .locals 2

    .line 114
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes-IA;)V

    return-object v0
.end method

.method public setActivityName(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->-$$Nest$fputmActivityName(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->-$$Nest$fputmDescription(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIconUri(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->-$$Nest$fputmIconUri(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setModeName(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->-$$Nest$fputmModeName(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->-$$Nest$fputmPackageName(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->mAttributes:Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->-$$Nest$fputmTitle(Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;Ljava/lang/String;)V

    return-object p0
.end method
